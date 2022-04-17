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
  .equ kMemAlloc,   0       @ pointer to allocated memory
  .equ kVFTable,    4       @ pointer to physical jump table in virtual memory
  .equ kPFTable,    8       @ pointer to physical jump table in physical memory
  .equ kVBuffer,   12       @ pointer to 1k buffer in virtual memory
  .equ kPBuffer,   16       @ pointer to 1k buffer in physical memory
  .equ kReturn,    20       @ 32 bit return value
  .equ kFSize,     24       @ size of this binary object

@
@ 1: provide a NewtonScript interface for all functions
@

@ jump table
nsJumpTable:
  b ctor
  b dtor
  b checkForBackdoor
  b readWord
  b getStatus

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
  ldr r0, [r4, #kVFTable]
  adr r1, physCodeStart
  adr r2, physCodeEnd
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

  ldr r1, [r0]
  mov r2, #0
  str r2, [r0]
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
  @ 0x00018CA4: LoadFromPhysAddress
  mov r0, #2
  mov pc, lr
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

  @ldr r0, =#0x8080
  @mov r0, r0, lsl #2
  pop {r0-r4, lr}
  mov pc, lr

getStatusSVC:
  push {r0}
  push {r1-r4, lr}

  @ldr r0, [r4, #kPFTable]
  @mov lr, pc
  @ldr r0, =#0x8080
  @str r0, [r4, #kReturn]

  ldr lr, [r4, #kPFTable]   @ call this address in physical space
  ldr r0, =0x000011B0       @ disable I, D, and W cache, and MMU
  mov r1, pc                @ return here
  ldr pc, =0x007FF004       @ call 'write to control register'
  mov r0, r1

  pop {r1-r4, lr}
  pop {pc}
  .pool


@@
@ Erase Sector
@ \param NS Binary Data Block
@ \param NS Int address
@ \return NS Int error code or 0

@@
@ Write word to Flash
@ \param NS Binary Data Block
@ \param NS Int address
@ \param NS Binary with 4 bytes
@ \return NS Int error code or 0

@@
@ Write block to Flash
@ \param NS Binary Data Block
@ \param NS Int address
@ \param NS Binary with 4 to 1024 bytes
@ \return NS Int error code or 0

@
@ 2: ARM implementation of NewtonScript calls
@

@@
@ Initialize buffers and variables
@ \param r0 Data Block to hold all variables
@ \return r0 0 if OK, error code <0 if fail

@@
@ Free buffers and variables
@ \param r0 Data Block with pointers and variables
@ \return r0 0 if ok, error code <0 if fail

@@
@ Check for backdoor
@ \param r0 Data Block
@ \return r0 >0 for backdoor version number, or error code <0

@@
@ Read a word anywhere from Flash memory
@ \param r0 Data Block
@ \param r1 source address
@ \param r2 destination address
@ \return r0 error code <0, or 0 if value is ok

@@
@ Get Flash Memory status code
@ \param r0 Data Block
@ \return r0 status in 16 bits, or error code <0

@@
@ Erase Sector
@ \param r0 Data Block
@ \param r1 sector address
@ \return r0 error code or 0

@@
@ Write word to Flash
@ \param r0 Data Block
@ \param r1 dest address
@ \param r2 data
@ \return r0 error code or 0

@@
@ Write block to Flash
@ \param r0 Data Block
@ \param r1 dest address
@ \param r2 source address
@ \param r3 data size in words (1 to 256)
@ \return r0 error code or 0

@
@ 3: ARM code that will be move to an address in physical space
@

@ Jump table
physCodeStart:
  b PGetStatus
PGetStatus:
  mov lr, r1

  mov r0, #0
  ldr r1, =0x00001554
  ldr r2, =0x00700070
  str r2, [r1]
  ldr r1, [r0]

  @ldr r1, =#0x1234

  ldr r0, =0x000011BD       @ enable I, D, and W cache, and MMU
  ldr pc, =0x007FF004       @ call 'write to control register'



  mov pc, lr
  @ return address in r3
  @ldr r1, =0x00001554
  @ldr r2, =0x00700070
  @str r2, [r1]
  @ldr r0, [r1]
  @mov lr, r3
  @ldr r0, =0x000011BD    @ enable I, D, and W cache, and MMU
  @ldr pc, =0x007FF004    @ call 'write to control register'
  .pool
physCodeEnd:


@ ...



      @.word 0xE1200070
			ldr r0, =0x0badcafe
			mov r2, #0
			add r1, pc, #8
			swi 12					@ enter SVC mode
			mov r0, r2, lsl #2		@ convert the result into an integer object
			mov pc, lr				@ return to the interpreter

		svc_call:

			@.word 0xE1200070
			stmdb sp!, {r0, lr}		@ save return address in r0

			adr r0, runPhys			@ jump to this address in physical RAM
			mov lr, pc
			ldr pc, =0x0015BCC8		@ VtoP

			ldr r1, =0x00001554
			ldr r2, =0x00700070
			mov r3, #0

			adr r4, returnPhys
			mov lr, r0				@ return to the ohysical address			
			ldr r0, =0x000011B0		@ disable I, D, and W cache, and MMU
			ldr pc, =0x007FF004		@ call 'write to control register'

			@ this code is executed in physical space
		runPhys:
			str r2, [r1]
			ldr r2, [r3]

			mov lr, r4
			ldr r0, =0x000011BD		@ enable I, D, and W cache, and MMU
			ldr pc, =0x007FF004		@ call 'write to control register'

		returnPhys:
			ldmia sp!, {r0, lr}
			mov pc, r0
