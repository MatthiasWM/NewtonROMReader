@
@ This module handles all access to the Flash ROM board.
@
@ - ctor and dtor for physical ROM base, copy code to physical RAM
@ - check if this is a Flash ROM or a mask programmed ROM
@ - check if the the ROM has a backdoor and which version
@ - read word from Flash
@ - erase sector
@ - write word to Flash
@ - write binary block (up to 256 bytes) to Flash
@ - copy sector from A to B
@
@ We have three classes of code
@  1: handles all NewtonScript calls, converts data to ARM data
@  2: all calls that require supervisor mode
@  3: all calls that require a disable MMU and must be copied to physically
@     adressable RAM
@

@ Variable space:
  .equ kReturn,     0       @ 32 bit return value
  .equ kMemAlloc,   4       @ pointer to allocated memory
  .equ kVFTable,    8       @ pointer to physical jump table in virtual memory
  .equ kPFTable,   12       @ pointer to physical jump table in physical memory
  .equ kVBuffer,   16       @ pointer to 1k buffer in virtual memory
  .equ kPBuffer,   20       @ pointer to 1k buffer in physical memory
  .equ kFSize,     24       @ size of this binary object

@
@ 1: provide a NewtonScript interface for all functions
@

@ jump table
nsJumpTable:
  b ctor                    @  0
  b dtor                    @  4
  b checkForBackdoor        @  8
  b readWord                @ 12
  b getStatus               @ 16
  b eraseSector             @ 20
  b writeWord               @ 24
  b writeBlock              @ 28
  b clearStatus             @ 32

@@
@ Initialize buffers and variables
@ \param r1: NS Symbol for binary block
@ \return NS Binary Data Block to hold all variables,
@         or NS Int error code <0 if fail
ctor:
  push {r4, lr}
  mov r0, r1
  mov r1, #kFSize           @ allocate enough memory for our variable space
  mov lr, pc                @ call:
  ldr pc, =0x0031BE7C       @ RefVar r0 = AllocateBinary(RefVar const &, long)

  push {r0}
  mov lr, pc                @ call:
  ldr pc, =0x0031B0BC       @ LockedRef(ref);

  ldr r0, [sp]
  mov lr, pc
  ldr pc, =0x0031E684       @ BinaryData(ref);

  mov r4, r0
  mov r0, #3*1024
  mov lr, pc
  ldr pc, =0x00142B28       @ NewPtr
  str r0, [r4, #kMemAlloc]

  ldr r1, =#1023
  bic r0, r0, r1
  add r0, r0, #1024
  str r0, [r4, #kVFTable]   @ align to 1k and store

  mov lr, pc
  ldr pc, =0x000D96D0       @ call VToP(unsigned long)
  str r0, [r4, #kPFTable]   @ store physical function address

  @@ now copy all functions that must reside in physical space over here
  @@ check that our functions fit into the allocated space!
  @.word 0xE1200070
  adrl r1, physCodeStart
  adrl r2, physCodeEnd
  sub r0, r2, r1            @ calculate the size of our Phys code block
  str r0, [r4, #kReturn]    @ and return the size; we should throw an exception if it is over 1k!
  ldr r0, [r4, #kVFTable]
copyAllCode:
  ldmia r1!, {r3}
  stmia r0!, {r3}
  cmp r1, r2
  bne copyAllCode

  ldr r0, [r4, #kVFTable]
  add r0, #1024             @ have our data buffer here
  str r0, [r4, #kVBuffer]   @ store virtual buffer address

  mov lr, pc
  ldr pc, =0x000D96D0       @ call VToP(unsigned long)
  str r0, [r4, #kPBuffer]   @ store physical buffer address

  ldr r0, [sp]
  mov lr, pc
  ldr pc, =0x0031B108       @ UnlockRef(ref);

  pop {r0, r4, pc}
  .pool

@@
@ Free buffers and variables
@ \param NS Binary Data Block with pointers and variables
@ \return 0 if ok, error code <0 if fail
dtor:
  push {r1, lr}

  mov r0, r1
  mov lr, pc
  ldr pc, =0x0031C9F0       @ LockedBinaryPtr(RefVar const &)

  ldr r1, [r0, #kMemAlloc]
  mov r2, #0
  str r2, [r0, #kMemAlloc]
  mov r0, r1
  mov lr, pc
  ldr pc, =0x0014320C       @ DisposePtr()

  pop {r0}
  mov lr, pc
  ldr pc, =0x0031CA28       @ UnlockRefArg(RefVar const &)

  mov r0, #2                @ return NIL
  pop {pc}
  .pool

@@
@ Check for backdoor
@ \param NS Binary Data Block
@ \return >0 for backdoor version number, or error code <0
checkForBackkdoor:
  mov r0, #2
  mov pc, lr
  .pool

@@
@ Read a word anywhere from Flash memory
@ \param NS Binary Data Block
@ \param NS Int address
@ \return NS Int error code or NS Binary with value
readWord:
  mov r0, #2
  push {r0-r5, lr}

  ldr r5, [r2]              @ get the address to read as an int in r5
  ldr r5, [r5]
  mov r5, r5, lsr #2

  mov r0, r1
  mov lr, pc
  ldr pc, =0x0031C9F0       @ LockedBinaryPtr(RefVar const &)
  mov r4, r0

  ldr r0, =0x0BADCAFE       @ use backdoor to go into supervisor mode
  adr r1, readWordSVC
  mov r2, r5
  swi 12
  str r0, [r4, #kReturn]

  ldr r0, [sp, #4]
  mov lr, pc
  ldr pc, =0x0031CA28       @ UnlockRefArg(RefVar const &)

  pop {r0-r5, lr}
  mov pc, lr

readWordSVC:
  push {r0}
  push {r1-r4, lr}

  mov r0, r2
  mov lr, pc
  ldr pc, =0x00018CA4       @ LoadFromPhysAddress()

  pop {r1-r4, lr}
  pop {pc}
  .pool

@@
@ Get Flash Memory status code
@ \param r1: NS Binary Data Block
@ \return r0: NS Int status in 16 bits, or error code <0
getStatus:
  mov r0, #2
  push {r0-r4, lr}
  mov r0, r1
  mov lr, pc
  ldr pc, =0x0031C9F0       @ LockedBinaryPtr(RefVar const &)
  mov r4, r0

  ldr r0, =0x0BADCAFE       @ use backdoor to go into supervisor mode
  adr r1, getStatusSVC
  swi 12
  str r0, [r4, #kReturn]

  ldr r0, [sp, #4]
  mov lr, pc
  ldr pc, =0x0031CA28       @ UnlockRefArg(RefVar const &)

  pop {r0-r4, lr}
  mov pc, lr

getStatusSVC:
  push {r0}
  push {r1-r4, lr}

  ldr lr, [r4, #kPFTable]   @ call PGetStatus in physical space
  ldr r0, =0x000011B0       @ disable I, D, and W cache, and MMU
  mov r1, pc                @ return here
  ldr pc, =0x007FF004       @ call 'write to control register'
  mov r0, r1

  pop {r1-r4, lr}
  pop {pc}
  .pool


@@
@ Erase Sector
@ \param r1: NS Binary Data Block
@ \param r2: NS Int address
@ \return r0: NS Int error code or 0
eraseSector:
  mov r0, #2
  push {r0-r8, lr}

  ldr r5, [r2]              @ get the address of the sector to erase as an int in r5
  ldr r5, [r5]
  mov r5, r5, lsr #2

  mov r0, r1
  mov lr, pc
  ldr pc, =0x0031C9F0       @ LockedBinaryPtr(RefVar const &)
  mov r4, r0
  push {r4}

  ldr r0, =0x0BADCAFE       @ use backdoor to go into supervisor mode
  adr r1, eraseSectorSVC
  mov r2, r5
  swi 12
  pop {r4}
  str r0, [r4, #kReturn]

  ldr r0, [sp, #4]
  mov lr, pc
  ldr pc, =0x0031CA28       @ UnlockRefArg(RefVar const &)

  pop {r0-r8, pc}

eraseSectorSVC:
  push {r0}
  push {r1-r8, lr}

  @ r2=address
  ldr lr, [r4, #kPFTable]   @ call this address in physical space
  add lr, lr, #12           @ PEraseSector
  ldr r0, =0x000011B0       @ disable I, D, and W cache, and MMU
  mov r1, pc                @ return here
  ldr pc, =0x007FF004       @ call 'write to control register'
  mov r0, r1

  pop {r1-r8, lr}
  pop {pc}
  .pool

@@
@ Write word to Flash
@ \param NS Binary Data Block
@ \param NS Int address
@ \param NS Binary with 4 bytes
@ \return NS Int error code or 0
writeWord:
  mov     r12, sp           @ create local variable space
  stmdb   sp!, {r4-r12, lr-pc}
  sub     r11, r12, #4
  sub     sp, sp, #16

  str r1, [sp]              @ sp+0 = self ref
  ldr r2, [r2]              @ get the address to write as an int in r5
  ldr r2, [r2]
  mov r2, r2, lsr #2
  str r2, [sp, #4]          @ sp+4 = address
  str r3, [sp, #8]          @ sp+8 = data ref

  mov r0, r3
  mov lr, pc
  ldr pc, =0x0031C9F0       @ LockedBinaryPtr(RefVar const &)
  ldr r3, [r0]
  str r3, [sp, #12]         @ sp+12 = data
  ldr r0, [sp, #8]          @ get data ref
  mov lr, pc
  ldr pc, =0x0031CA28       @ UnlockRefArg(RefVar const &)

  ldr r0, [sp]              @ get self ref
  mov lr, pc
  ldr pc, =0x0031C9F0       @ LockedBinaryPtr(RefVar const &)
  mov r4, r0                @ self ptr in r4

  ldr r0, =0x0BADCAFE       @ use backdoor to go into supervisor mode
  adr r1, writeWordSVC
  ldr r2, [sp, #4]          @ r2 = address
  ldr r3, [sp, #12]         @ r3 = data
  swi 12
  str r0, [r4, #kReturn]

  ldr r0, [sp]              @ get self ref
  mov lr, pc
  ldr pc, =0x0031CA28       @ UnlockRefArg(RefVar const &)

  mov r0, #2                @ todo: return the flash statsu
  ldmdb r11, {r4-r11, sp, pc} @ return

writeWordSVC:
  push {r0}
  push {r1-r4, lr}

  @ r2=address, r3=data
  ldr lr, [r4, #kPFTable]   @ call this address in physical space
  add lr, lr, #8            @ PWriteWord
  ldr r0, =0x000011B0       @ disable I, D, and W cache, and MMU
  mov r1, pc                @ return here
  ldr pc, =0x007FF004       @ call 'write to control register'
  mov r0, r1

  pop {r1-r4, lr}
  pop {pc}
  .pool

@@
@ Write block to Flash
@ \param NS Binary Data Block
@ \param NS Int address
@ \param NS Binary with 4 to 1024 bytes
@ \return NS Int error code or 0
@ locals
@ sp+ 0: self ref
@ sp+ 4: dest address
@ sp+ 8: data ref
@ sp+12: (spare)
@ sp+16: data size in words
@ sp+20: self ptr
writeBlock:
  @# save registers and allocate stack space for locals
  mov     r12, sp           @ create local varaible space
  stmdb   sp!, {r4-r12, lr-pc}
  sub     r11, r12, #4
  sub     sp, sp, #24

  @# get the destination address
  str r1, [sp]              @ sp+0 = self ref
  ldr r2, [r2]              @ get the address to write as an int in r5
  ldr r2, [r2]
  mov r2, r2, lsr #2
  str r2, [sp, #4]          @ sp+4 = address
  str r3, [sp, #8]          @ sp+8 = data ref

  @# get the size of the binary data chunk and save the number of words
  ldr r0, [r3]              @ Convert binary data ref to pointer
  ldr r0, [r0]
  mov lr, pc
  ldr pc, =0x0031E2AC       @ Length()
  mov r0, r0, lsr #2        @ bytes to words
  str r0, [sp, #16]         @ sp+16 = length in words

  @# lock self in place
  ldr r0, [sp]              @ get self ref
  mov lr, pc
  ldr pc, =0x0031C9F0       @ LockedBinaryPtr(RefVar const &)
  str r0, [sp, #20]

  ldr r0, [sp, #8]          @ data ref
  mov lr, pc
  ldr pc, =0x0031C9F0       @ LockedBinaryPtr(RefVar const &)

  @# copy block and save size info, r0=data, r1=pData, r2=numWords
  ldr r4, [sp, #20]         @ r4 = self ptr
  ldr r1, [r4, #kVBuffer]
  ldr r2, [sp, #16]
writeBlockCopyMore:
  ldmia r0!, {r3}
  stmia r1!, {r3}
  subs r2, #1
  bne writeBlockCopyMore

  ldr r4, [sp, #20]         @ r4 = self ptr
  ldr r0, =0x0BADCAFE       @ use backdoor to go into supervisor mode
  adr r1, writeBlockSVC
  ldr r2, [sp, #4]          @ r2 = dst
  ldr r3, [r4, #kPBuffer]   @ r3 = src (physical buffer)
  ldr r5, [sp, #16]         @ r5 = nWords

  swi 12
  ldr r4, [sp, #20]
  str r0, [r4, #kReturn]

  @# unlock data block
  ldr r0, [sp, #8]          @ get data ref
  mov lr, pc
  ldr pc, =0x0031CA28       @ UnlockRefArg(RefVar const &)

  @# unlock self ref
  ldr r0, [sp]              @ get self ref
  mov lr, pc
  ldr pc, =0x0031CA28       @ UnlockRefArg(RefVar const &)

  mov r0, #2                @ todo: return the flash statsu
  ldmdb r11, {r4-r11, sp, pc} @ return

writeBlockSVC:
  push {r0}
  push {r1-r8, lr}

  @# r2=address, r3=data, r4=this, r5=size
  ldr lr, [r4, #kPFTable]   @ call this address in physical space
  add lr, lr, #16           @ PWriteBlock
  ldr r0, =0x000011B0       @ disable I, D, and W cache, and MMU
  mov r1, pc                @ return here

  @.word 0xE1200070

  ldr pc, =0x007FF004       @ call 'write to control register'
  mov r0, r1

  pop {r1-r8, lr}
  pop {pc}
  .pool

@@
@ Clear Flash Status word
@ \param NS Binary Data Block
@ \return nil
clearStatus:
  mov r0, #2
  push {r0-r4, lr}
  mov r0, r1
  mov lr, pc
  ldr pc, =0x0031C9F0       @ LockedBinaryPtr(RefVar const &)
  mov r4, r0

  ldr r0, =0x0BADCAFE       @ use backdoor to go into supervisor mode
  adr r1, clearStatusSVC
  swi 12
  str r0, [r4, #kReturn]

  ldr r0, [sp, #4]
  mov lr, pc
  ldr pc, =0x0031CA28       @ UnlockRefArg(RefVar const &)

  pop {r0-r4, lr}
  mov pc, lr

clearStatusSVC:
  push {r0}
  push {r1-r4, lr}

  ldr lr, [r4, #kPFTable]   @ call this address in physical space
  add lr, lr, #4            @ PClearStatus
  ldr r0, =0x000011B0       @ disable I, D, and W cache, and MMU
  mov r1, pc                @ return here
  ldr pc, =0x007FF004       @ call 'write to control register'
  mov r0, r1

  pop {r1-r4, lr}
  pop {pc}
.pool


@
@ 3: ARM code that will be move to an address in physical space
@

@@ =============================================================================
physCodeStart:

@ Jump table
  b PGetStatus              @  0
  b PClearStatus            @  4
  b PWriteWord              @  8
  b PEraseSector            @ 12
  b PWriteBlock             @ 16

@ Get the current status information.
@ This function dows not wait for the Flash busy bit. It can be used with the
@ original ROM card in which case it returns the first word of the ROM.
PGetStatus:
  mov lr, r1

PGetStatusNow:
  mov r0, #0
  ldr r1, =0x00001554       @ 2x S29GL256
  ldr r2, =0x00700070
  str r2, [r1]
  ldr r1, [r0]              @ Flash returns busy status in bit 7

  ldr r0, =0x000011BD       @ enable I, D, and W cache, and MMU
  ldr pc, =0x007FF004       @ call 'write to control register'

@ Clear the status word and reread it.
@ Wait until the Flash is no longer busy.
@ If original ROMs are queried, this function locks the device.
PClearStatus:
  mov lr, r1

  ldr r1, =0x00001554       @ 2x S29GL256
  ldr r2, =0x00710071
  str r2, [r1]

PWaitForStatus:
  mov r0, #0
  ldr r1, =0x00001554       @ 2x S29GL256
  ldr r2, =0x00700070
PGetStatusLoop:
  str r2, [r1]
  ldr r3, [r0]              @ Flash returns busy status in bit 7
  tst r3, #0x00000080       @ check if the lower bank is busy
  beq PGetStatusLoop        @ if the bit is 0, it's busy, so try again
  tst r3, #0x00800000       @ check if the upper bank is busy
  beq PGetStatusLoop        @ if the bit is 0, it's busy, so try again

  @ both chips are no longer busy, so return the status in r1
  mov r1, r3
  ldr r0, =0x000011BD       @ enable I, D, and W cache, and MMU
  ldr pc, =0x007FF004       @ call 'write to control register'

@ Write a 4 byte word to a given address.
@ This take typ. 125 and max. 400 us.
@ Wait until the Flash is no longer busy.
@ If original ROMs are queried, this function locks the device.
PWriteWord:                 @ r2=address, r3=data
  mov lr, r1

  ldr r1, =0x00000555 * 4   @ 2x S29GL256
  ldr r0, =0x00710071
  str r0, [r1]              @ clear status

  ldr r0, =0x00AA00AA
  str r0, [r1]              @ Write Word Cycle 1: 555 AA
  ldr r1, =0x000002AA * 4
  ldr r0, =0x00550055
  str r0, [r1]              @ Write Word Cycle 2: 2AA 55
  ldr r1, =0x00000555 * 4
  ldr r0, =0x00A000A0
  str r0, [r1]              @ Write Word Cycle 2: 555 A0
  str r3, [r2]              @ Write Word Cycle 3: dest data

  b PWaitForStatus          @ continue with reading the status

@ Erase a single sector (set every word to FFFFFFFF).
@ This takes typ. 275 and max. 1100 ms
@ Wait until the Flash is no longer busy.
@ If original ROMs are queried, this function locks the device.
@ r2=dest
PEraseSector:
  mov lr, r1

  ldr r1, =0x00000555 * 4   @ 2x S29GL256
  ldr r0, =0x00710071
  str r0, [r1]              @ clear status

  ldr r0, =0x00AA00AA
  str r0, [r1]              @ Erase Sector Cycle 1: 555 AA
  ldr r1, =0x000002AA * 4
  ldr r0, =0x00550055
  str r0, [r1]              @ Erase Sector Cycle 2: 2AA 55
  ldr r1, =0x00000555 * 4
  ldr r0, =0x00800080
  str r0, [r1]              @ Erase Sector Cycle 2: 555 80
  ldr r0, =0x00AA00AA
  str r0, [r1]              @ Erase Sector Cycle 3: 555 AA
  ldr r1, =0x000002AA * 4
  ldr r0, =0x00550055
  str r0, [r1]              @ Erase Sector Cycle 4: 2AA 55
  ldr r0, =0x00300030
  str r0, [r2]              @ Erase Sector Cycle 5: dest 30

  @b PGetStatusNow           @ Emulator friendly
  b PWaitForStatus          @ continue with reading the status

@ Write a block of memeory using the Flash buffer.
@ This takes typ. 340 to max. 750 us.
@ Wait until the Flash is no longer busy.
@ If original ROMs are queried, this function locks the device.
@ r2=dst, r3=src, r5=nWords-1
PWriteBlock:
  mov lr, r1

  ldr r1, =0x00000555 * 4   @ 2x S29GL256
  ldr r0, =0x00710071
  str r0, [r1]              @ clear status

  ldr r0, =0x00AA00AA
  str r0, [r1]              @ Write Block Cycle 1: 555 AA
  ldr r1, =0x000002AA * 4
  ldr r0, =0x00550055
  str r0, [r1]              @ Write Block Cycle 2: 2AA 55
  ldr r0, =0x00250025
  str r0, [r2]              @ Write Block Cycle 3: dst 25
  sub r0, r5, #1
  orr r0, r0, lsl #16
  str r0, [r2]              @ Write Block Cycle 4: dst words-1

  mov r6, r5
  mov r7, r2
PWriteBlockLoop:
  ldr r0, [r3]
  str r0, [r7]              @ Write Block Cycle n*5: addr+n, data[n]
  add r3, #4
  add r7, #4
  subs r6, #1
  bne PWriteBlockLoop

  ldr r0, =0x00290029
  str r0, [r2]              @ Write Block Cycle 6: addr 29

  @b PGetStatusNow           @ Emulator friendly
  b PWaitForStatus          @ continue with reading the status

  .ascii "pool"
  .pool
  .ascii "endp"

physCodeEnd:

@@ =============================================================================

