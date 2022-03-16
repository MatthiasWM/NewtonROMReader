
/*
 Dependency:

ff.cpp
 - ff.h
   - integer.h
   - ffconf.h
 - diskio.h
   - integer.h
usbhost.cpp
 - duedue.h
 - usbhost.h
 
In this header in this order:

duedue.h
usbhost.h
integer.h
ffconf.h
ff.h
diskio.h

*/

#define USEFATFS

extern void uhServer();
extern int uhgogo;

// ==== duedue.h =========================================================

// Arduino due

#ifndef DUEDUEDUE
#define DUEDUEDUE
#ifndef __SAM3X8E__
#define __SAM3X8E__
#endif
#include <Arduino.h>
#include <sam3xa/include/sam3xa.h>
#include <sys/types.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <stdarg.h>

#ifdef __cplusplus
#define CCFUNCTION(xxx)  extern "C" { xxx; }
#else
#define CCFUNCTION(xxx)  xxx;
#endif
#if (defined __GNUC__) || (defined __CC_ARM)
#define ALIGN16 __attribute__((aligned(2)))
#define ALIGN32 __attribute__((aligned(4)))
#define ISALIGN32(x) ((((u32)(x))&0x3)==0)
#endif

typedef unsigned char  uchar;
typedef unsigned char u8;
typedef unsigned short  u16;
typedef unsigned int  u32;
typedef unsigned long long  u64;
typedef signed char s8;
typedef signed short  s16;
typedef signed int  s32;
typedef signed long long s64;

void dumphex(const char *p, u32 addr, int cnt);

#endif // DUEDUEDUE

// ==== usbhost.h ========================================================

//  usb-host driver, class msc / scsi, to handle a USB key

#define UHSTAT_NULL  0   // not initialized
#define UHSTAT_NODEV  1   // dev not present
#define UHSTAT_DEV  2   // dev present
#define UHSTAT_ENUM 3   // enum done
#define UHSTAT_READY  4   // disk info valid

#define UHERROR_NOTREADY -1
#define UHERROR_TIMEOUT -2
#define UHERROR_STALL -3    // not really an error
#define UHERROR_REPLY -4
#define UHERROR_INTERN -5
#define UHERROR_IO -6

void uhInit();        // initialise usb host interface
                //  until state = UHSTAT_READY
int mscReadBlock(u32 lba, char *buf); // read block
int mscWriteBlock(u32 lba, char *buf);

struct _uhstate {
  volatile int  state;    // off, enumeration, ready
  u32 capacity;   // total number of blocks

  u16 idVendor;   // enumeration
  u16 idProduct;
  u8  vendor_id[8+1]; 
  u8  product_id[16+1];
  u8  product_rev[4+1];
  u16 maxPower;
  int verbose;
};

extern struct _uhstate uhstate;

void uhPrintState();      // print state
void uhDump();        // print internal state


// +++ external functions for integration

void uhWaitMs(int n);
void uhSwitch();
void uhStatServer();

// millis();        // return system millisecond tick
// printf();

// ==== integer.h ========================================================

/*-------------------------------------------*/
/* Integer type definitions for FatFs module */
/*-------------------------------------------*/

#ifndef _INTEGER
#define _INTEGER


/* These types must be 16-bit, 32-bit or larger integer */
typedef int        INT;
typedef unsigned int  UINT;

/* These types must be 8-bit integer */
typedef char      CHAR;
typedef unsigned char UCHAR;
typedef unsigned char BYTE;

/* These types must be 16-bit integer */
typedef short     SHORT;
typedef unsigned short  USHORT;
typedef unsigned short  WORD;
typedef unsigned short  WCHAR;

/* These types must be 32-bit integer */
typedef long      LONG;
typedef unsigned long ULONG;
typedef unsigned long DWORD;

#endif

// ==== ffconf.h =========================================================

/*---------------------------------------------------------------------------/
/  FatFs - FAT file system module configuration file  R0.09  (C)ChaN, 2011
/----------------------------------------------------------------------------/
/
/ CAUTION! Do not forget to make clean the project after any changes to
/ the configuration options.
/
/----------------------------------------------------------------------------*/

#ifndef _FFCONF
#define _FFCONF 6502  /* Revision ID */

/*---------------------------------------------------------------------------/
/ Functions and Buffer Configurations
/----------------------------------------------------------------------------*/

#define _FS_TINY    0 /* 0:Normal or 1:Tiny */
/* When _FS_TINY is set to 1, FatFs uses the sector buffer in the file system
/  object instead of the sector buffer in the individual file object for file
/  data transfer. This reduces memory consumption 512 bytes each file object. */


#define _FS_READONLY  0 /* 0:Read/Write or 1:Read only */
/* Setting _FS_READONLY to 1 defines read only configuration. This removes
/  writing functions, f_write, f_sync, f_unlink, f_mkdir, f_chmod, f_rename,
/  f_truncate and useless f_getfree. */


#define _FS_MINIMIZE  0 /* 0 to 3 */
/* The _FS_MINIMIZE option defines minimization level to remove some functions.
/
/   0: Full function.
/   1: f_stat, f_getfree, f_unlink, f_mkdir, f_chmod, f_truncate and f_rename
/      are removed.
/   2: f_opendir and f_readdir are removed in addition to 1.
/   3: f_lseek is removed in addition to 2. */


#define _USE_STRFUNC  1 /* 0:Disable or 1-2:Enable */
/* To enable string functions, set _USE_STRFUNC to 1 or 2. */


#define _USE_MKFS   1 /* 0:Disable or 1:Enable */
/* To enable f_mkfs function, set _USE_MKFS to 1 and set _FS_READONLY to 0 */


#define _USE_FORWARD  0 /* 0:Disable or 1:Enable */
/* To enable f_forward function, set _USE_FORWARD to 1 and set _FS_TINY to 1. */


#define _USE_FASTSEEK 0 /* 0:Disable or 1:Enable */
/* To enable fast seek feature, set _USE_FASTSEEK to 1. */



/*---------------------------------------------------------------------------/
/ Locale and Namespace Configurations
/----------------------------------------------------------------------------*/

#define _CODE_PAGE  850
/* The _CODE_PAGE specifies the OEM code page to be used on the target system.
/  Incorrect setting of the code page can cause a file open failure.
/
/   932  - Japanese Shift-JIS (DBCS, OEM, Windows)
/   936  - Simplified Chinese GBK (DBCS, OEM, Windows)
/   949  - Korean (DBCS, OEM, Windows)
/   950  - Traditional Chinese Big5 (DBCS, OEM, Windows)
/   1250 - Central Europe (Windows)
/   1251 - Cyrillic (Windows)
/   1252 - Latin 1 (Windows)
/   1253 - Greek (Windows)
/   1254 - Turkish (Windows)
/   1255 - Hebrew (Windows)
/   1256 - Arabic (Windows)
/   1257 - Baltic (Windows)
/   1258 - Vietnam (OEM, Windows)
/   437  - U.S. (OEM)
/   720  - Arabic (OEM)
/   737  - Greek (OEM)
/   775  - Baltic (OEM)
/   850  - Multilingual Latin 1 (OEM)
/   858  - Multilingual Latin 1 + Euro (OEM)
/   852  - Latin 2 (OEM)
/   855  - Cyrillic (OEM)
/   866  - Russian (OEM)
/   857  - Turkish (OEM)
/   862  - Hebrew (OEM)
/   874  - Thai (OEM, Windows)
/ 1    - ASCII only (Valid for non LFN cfg.)
*/


#define _USE_LFN  2   /* 0 to 3 */
#define _MAX_LFN  50  /* Maximum LFN length to handle (12 to 255) */
//efine _MAX_LFN  255 /* Maximum LFN length to handle (12 to 255) */
/* The _USE_LFN option switches the LFN support.
/
/   0: Disable LFN feature. _MAX_LFN and _LFN_UNICODE have no effect.
/   1: Enable LFN with static working buffer on the BSS. Always NOT reentrant.
/   2: Enable LFN with dynamic working buffer on the STACK.
/   3: Enable LFN with dynamic working buffer on the HEAP.
/
/  The LFN working buffer occupies (_MAX_LFN + 1) * 2 bytes. To enable LFN,
/  Unicode handling functions ff_convert() and ff_wtoupper() must be added
/  to the project. When enable to use heap, memory control functions
/  ff_memalloc() and ff_memfree() must be added to the project. */


#define _LFN_UNICODE  0 /* 0:ANSI/OEM or 1:Unicode */
/* To switch the character code set on FatFs API to Unicode,
/  enable LFN feature and set _LFN_UNICODE to 1. */


#define _FS_RPATH   0 /* 0 to 2 */
/* The _FS_RPATH option configures relative path feature.
/
/   0: Disable relative path feature and remove related functions.
/   1: Enable relative path. f_chdrive() and f_chdir() are available.
/   2: f_getcwd() is available in addition to 1.
/
/  Note that output of the f_readdir fnction is affected by this option. */



/*---------------------------------------------------------------------------/
/ Physical Drive Configurations
/----------------------------------------------------------------------------*/

#define _VOLUMES  1
/* Number of volumes (logical drives) to be used. */


#define _MAX_SS   512   /* 512, 1024, 2048 or 4096 */
/* Maximum sector size to be handled.
/  Always set 512 for memory card and hard disk but a larger value may be
/  required for on-board flash memory, floppy disk and optical disk.
/  When _MAX_SS is larger than 512, it configures FatFs to variable sector size
/  and GET_SECTOR_SIZE command must be implememted to the disk_ioctl function. */


#define _MULTI_PARTITION  0 /* 0:Single partition, 1/2:Enable multiple partition */
/* When set to 0, each volume is bound to the same physical drive number and
/ it can mount only first primaly partition. When it is set to 1, each volume
/ is tied to the partitions listed in VolToPart[]. */


#define _USE_ERASE  0 /* 0:Disable or 1:Enable */
/* To enable sector erase feature, set _USE_ERASE to 1. CTRL_ERASE_SECTOR command
/  should be added to the disk_ioctl functio. */



/*---------------------------------------------------------------------------/
/ System Configurations
/----------------------------------------------------------------------------*/

#define _WORD_ACCESS  0 /* 0 or 1 */
/* Set 0 first and it is always compatible with all platforms. The _WORD_ACCESS
/  option defines which access method is used to the word data on the FAT volume.
/
/   0: Byte-by-byte access.
/   1: Word access. Do not choose this unless following condition is met.
/
/  When the byte order on the memory is big-endian or address miss-aligned word
/  access results incorrect behavior, the _WORD_ACCESS must be set to 0.
/  If it is not the case, the value can also be set to 1 to improve the
/  performance and code size.
*/


/* A header file that defines sync object types on the O/S, such as
/  windows.h, ucos_ii.h and semphr.h, must be included prior to ff.h. */

#define _FS_REENTRANT 0   /* 0:Disable or 1:Enable */
#define _FS_TIMEOUT   1000  /* Timeout period in unit of time ticks */
#define _SYNC_t     HANDLE  /* O/S dependent type of sync object. e.g. HANDLE, OS_EVENT*, ID and etc.. */

/* The _FS_REENTRANT option switches the reentrancy (thread safe) of the FatFs module.
/
/   0: Disable reentrancy. _SYNC_t and _FS_TIMEOUT have no effect.
/   1: Enable reentrancy. Also user provided synchronization handlers,
/      ff_req_grant, ff_rel_grant, ff_del_syncobj and ff_cre_syncobj
/      function must be added to the project. */


#define _FS_SHARE 0 /* 0:Disable or >=1:Enable */
/* To enable file shareing feature, set _FS_SHARE to 1 or greater. The value
   defines how many files can be opened simultaneously. */


#endif /* _FFCONFIG */
// ==== ff.h =============================================================

/*---------------------------------------------------------------------------/
/  FatFs - FAT file system module include file  R0.09     (C)ChaN, 2011
/----------------------------------------------------------------------------/
/ FatFs module is a generic FAT file system module for small embedded systems.
/ This is a free software that opened for education, research and commercial
/ developments under license policy of following trems.
/
/  Copyright (C) 2011, ChaN, all right reserved.
/
/ * The FatFs module is a free software and there is NO WARRANTY.
/ * No restriction on use. You can use, modify and redistribute it for
/   personal, non-profit or commercial product UNDER YOUR RESPONSIBILITY.
/ * Redistributions of source code must retain the above copyright notice.
/
/----------------------------------------------------------------------------*/

#ifndef _FATFS
#define _FATFS  6502  /* Revision ID */

#ifdef __cplusplus
extern "C" {
#endif

//#include "integer.h"  /* Basic integer types */
//#include "ffconf.h"   /* FatFs configuration options */


#if _FATFS != _FFCONF
#error Wrong configuration file (ffconf.h).
#endif



/* Definitions of volume management */

#if _MULTI_PARTITION    /* Multiple partition configuration */
typedef struct {
  BYTE pd;  /* Physical drive number */
  BYTE pt;  /* Partition: 0:Auto detect, 1-4:Forced partition) */
} PARTITION;
extern PARTITION VolToPart[]; /* Volume - Partition resolution table */
#define LD2PD(vol) (VolToPart[vol].pd)  /* Get physical drive number */
#define LD2PT(vol) (VolToPart[vol].pt)  /* Get partition index */

#else           /* Single partition configuration */
#define LD2PD(vol) (vol)  /* Each logical drive is bound to the same physical drive number */
#define LD2PT(vol) 0    /* Always mounts the 1st partition or in SFD */

#endif



/* Type of path name strings on FatFs API */

#if _LFN_UNICODE      /* Unicode string */
#if !_USE_LFN
#error _LFN_UNICODE must be 0 in non-LFN cfg.
#endif
#ifndef _INC_TCHAR
typedef WCHAR TCHAR;
#define _T(x) L ## x
#define _TEXT(x) L ## x
#endif

#else           /* ANSI/OEM string */
#ifndef _INC_TCHAR
typedef char TCHAR;
#define _T(x) x
#define _TEXT(x) x
#endif

#endif



/* File system object structure (FATFS) */

typedef struct {
  BYTE  fs_type;    /* FAT sub-type (0:Not mounted) */
  BYTE  drv;      /* Physical drive number */
  BYTE  csize;      /* Sectors per cluster (1,2,4...128) */
  BYTE  n_fats;     /* Number of FAT copies (1,2) */
  BYTE  wflag;      /* win[] dirty flag (1:must be written back) */
  BYTE  fsi_flag;   /* fsinfo dirty flag (1:must be written back) */
  WORD  id;       /* File system mount ID */
  WORD  n_rootdir;    /* Number of root directory entries (FAT12/16) */
#if _MAX_SS != 512
  WORD  ssize;      /* Bytes per sector (512, 1024, 2048 or 4096) */
#endif
#if _FS_REENTRANT
  _SYNC_t sobj;     /* Identifier of sync object */
#endif
#if !_FS_READONLY
  DWORD last_clust;   /* Last allocated cluster */
  DWORD free_clust;   /* Number of free clusters */
  DWORD fsi_sector;   /* fsinfo sector (FAT32) */
#endif
#if _FS_RPATH
  DWORD cdir;     /* Current directory start cluster (0:root) */
#endif
  DWORD n_fatent;   /* Number of FAT entries (= number of clusters + 2) */
  DWORD fsize;      /* Sectors per FAT */
  DWORD fatbase;    /* FAT start sector */
  DWORD dirbase;    /* Root directory start sector (FAT32:Cluster#) */
  DWORD database;   /* Data start sector */
  DWORD winsect;    /* Current sector appearing in the win[] */
  BYTE  win[_MAX_SS]; /* Disk access window for Directory, FAT (and Data on tiny cfg) */
} FATFS;



/* File object structure (FIL) */

typedef struct {
  FATFS*  fs;       /* Pointer to the owner file system object */
  WORD  id;       /* Owner file system mount ID */
  BYTE  flag;     /* File status flags */
  BYTE  pad1;
  DWORD fptr;     /* File read/write pointer (0 on file open) */
  DWORD fsize;      /* File size */
  DWORD sclust;     /* File start cluster (0 when fsize==0) */
  DWORD clust;      /* Current cluster */
  DWORD dsect;      /* Current data sector */
#if !_FS_READONLY
  DWORD dir_sect;   /* Sector containing the directory entry */
  BYTE* dir_ptr;    /* Ponter to the directory entry in the window */
#endif
#if _USE_FASTSEEK
  DWORD*  cltbl;      /* Pointer to the cluster link map table (null on file open) */
#endif
#if _FS_SHARE
  UINT  lockid;     /* File lock ID (index of file semaphore table) */
#endif
#if !_FS_TINY
  BYTE  buf[_MAX_SS]; /* File data read/write buffer */
#endif
} FIL;



/* Directory object structure (DIR) */

typedef struct {
  FATFS*  fs;       /* Pointer to the owner file system object */
  WORD  id;       /* Owner file system mount ID */
  WORD  index;      /* Current read/write index number */
  DWORD sclust;     /* Table start cluster (0:Root dir) */
  DWORD clust;      /* Current cluster */
  DWORD sect;     /* Current sector */
  BYTE* dir;      /* Pointer to the current SFN entry in the win[] */
  BYTE* fn;       /* Pointer to the SFN (in/out) {file[8],ext[3],status[1]} */
#if _USE_LFN
  WCHAR*  lfn;      /* Pointer to the LFN working buffer */
  WORD  lfn_idx;    /* Last matched LFN index number (0xFFFF:No LFN) */
#endif
} DIR;



/* File status structure (FILINFO) */

typedef struct {
  DWORD fsize;      /* File size */
  WORD  fdate;      /* Last modified date */
  WORD  ftime;      /* Last modified time */
  BYTE  fattrib;    /* Attribute */
  TCHAR fname[13];    /* Short file name (8.3 format) */
#if _USE_LFN
  TCHAR*  lfname;     /* Pointer to the LFN buffer */
  UINT  lfsize;     /* Size of LFN buffer in TCHAR */
#endif
} FILINFO;



/* File function return code (FRESULT) */

typedef enum {
  FR_OK = 0,        /* (0) Succeeded */
  FR_DISK_ERR,      /* (1) A hard error occured in the low level disk I/O layer */
  FR_INT_ERR,       /* (2) Assertion failed */
  FR_NOT_READY,     /* (3) The physical drive cannot work */
  FR_NO_FILE,       /* (4) Could not find the file */
  FR_NO_PATH,       /* (5) Could not find the path */
  FR_INVALID_NAME,    /* (6) The path name format is invalid */
  FR_DENIED,        /* (7) Acces denied due to prohibited access or directory full */
  FR_EXIST,       /* (8) Acces denied due to prohibited access */
  FR_INVALID_OBJECT,    /* (9) The file/directory object is invalid */
  FR_WRITE_PROTECTED,   /* (10) The physical drive is write protected */
  FR_INVALID_DRIVE,   /* (11) The logical drive number is invalid */
  FR_NOT_ENABLED,     /* (12) The volume has no work area */
  FR_NO_FILESYSTEM,   /* (13) There is no valid FAT volume */
  FR_MKFS_ABORTED,    /* (14) The f_mkfs() aborted due to any parameter error */
  FR_TIMEOUT,       /* (15) Could not get a grant to access the volume within defined period */
  FR_LOCKED,        /* (16) The operation is rejected according to the file shareing policy */
  FR_NOT_ENOUGH_CORE,   /* (17) LFN working buffer could not be allocated */
  FR_TOO_MANY_OPEN_FILES, /* (18) Number of open files > _FS_SHARE */
  FR_INVALID_PARAMETER  /* (19) Given parameter is invalid */
} FRESULT;



/*--------------------------------------------------------------*/
/* FatFs module application interface                           */

FRESULT f_mount (BYTE, FATFS*);           /* Mount/Unmount a logical drive */
FRESULT f_open (FIL*, const TCHAR*, BYTE);      /* Open or create a file */
FRESULT f_read (FIL*, void*, UINT, UINT*);      /* Read data from a file */
FRESULT f_lseek (FIL*, DWORD);            /* Move file pointer of a file object */
FRESULT f_close (FIL*);               /* Close an open file object */
FRESULT f_opendir (DIR*, const TCHAR*);       /* Open an existing directory */
FRESULT f_readdir (DIR*, FILINFO*);         /* Read a directory item */
FRESULT f_stat (const TCHAR*, FILINFO*);      /* Get file status */
FRESULT f_write (FIL*, const void*, UINT, UINT*); /* Write data to a file */
FRESULT f_getfree (const TCHAR*, DWORD*, FATFS**);  /* Get number of free clusters on the drive */
FRESULT f_truncate (FIL*);              /* Truncate file */
FRESULT f_sync (FIL*);                /* Flush cached data of a writing file */
FRESULT f_unlink (const TCHAR*);          /* Delete an existing file or directory */
FRESULT f_mkdir (const TCHAR*);           /* Create a new directory */
FRESULT f_chmod (const TCHAR*, BYTE, BYTE);     /* Change attriburte of the file/dir */
FRESULT f_utime (const TCHAR*, const FILINFO*);   /* Change timestamp of the file/dir */
FRESULT f_rename (const TCHAR*, const TCHAR*);    /* Rename/Move a file or directory */
FRESULT f_chdrive (BYTE);             /* Change current drive */
FRESULT f_chdir (const TCHAR*);           /* Change current directory */
FRESULT f_getcwd (TCHAR*, UINT);          /* Get current directory */
FRESULT f_forward (FIL*, UINT(*)(const BYTE*,UINT), UINT, UINT*); /* Forward data to the stream */
FRESULT f_mkfs (BYTE, BYTE, UINT);          /* Create a file system on the drive */
FRESULT f_fdisk (BYTE, const DWORD[], void*);   /* Divide a physical drive into some partitions */
int f_putc (TCHAR, FIL*);             /* Put a character to the file */
int f_puts (const TCHAR*, FIL*);          /* Put a string to the file */
int f_printf (FIL*, const TCHAR*, ...);       /* Put a formatted string to the file */
TCHAR* f_gets (TCHAR*, int, FIL*);          /* Get a string from the file */

#define f_eof(fp) (((fp)->fptr == (fp)->fsize) ? 1 : 0)
#define f_error(fp) (((fp)->flag & FA__ERROR) ? 1 : 0)
#define f_tell(fp) ((fp)->fptr)
#define f_size(fp) ((fp)->fsize)

#ifndef EOF
#define EOF (-1)
#endif




/*--------------------------------------------------------------*/
/* Additional user defined functions                            */

/* RTC function */
#if !_FS_READONLY
DWORD get_fattime (void);
#endif

/* Unicode support functions */
#if _USE_LFN            /* Unicode - OEM code conversion */
WCHAR ff_convert (WCHAR, UINT);   /* OEM-Unicode bidirectional conversion */
WCHAR ff_wtoupper (WCHAR);      /* Unicode upper-case conversion */
#if _USE_LFN == 3         /* Memory functions */
void* ff_memalloc (UINT);     /* Allocate memory block */
void ff_memfree (void*);      /* Free memory block */
#endif
#endif

/* Sync functions */
#if _FS_REENTRANT
int ff_cre_syncobj (BYTE, _SYNC_t*);/* Create a sync object */
int ff_req_grant (_SYNC_t);     /* Lock sync object */
void ff_rel_grant (_SYNC_t);    /* Unlock sync object */
int ff_del_syncobj (_SYNC_t);   /* Delete a sync object */
#endif




/*--------------------------------------------------------------*/
/* Flags and offset address                                     */


/* File access control and file status flags (FIL.flag) */

#define FA_READ       0x01
#define FA_OPEN_EXISTING  0x00
#define FA__ERROR     0x80

#if !_FS_READONLY
#define FA_WRITE      0x02
#define FA_CREATE_NEW   0x04
#define FA_CREATE_ALWAYS  0x08
#define FA_OPEN_ALWAYS    0x10
#define FA__WRITTEN     0x20
#define FA__DIRTY     0x40
#endif


/* FAT sub type (FATFS.fs_type) */

#define FS_FAT12  1
#define FS_FAT16  2
#define FS_FAT32  3


/* File attribute bits for directory entry */

#define AM_RDO  0x01  /* Read only */
#define AM_HID  0x02  /* Hidden */
#define AM_SYS  0x04  /* System */
#define AM_VOL  0x08  /* Volume label */
#define AM_LFN  0x0F  /* LFN entry */
#define AM_DIR  0x10  /* Directory */
#define AM_ARC  0x20  /* Archive */
#define AM_MASK 0x3F  /* Mask of defined bits */


/* Fast seek feature */
#define CREATE_LINKMAP  0xFFFFFFFF



/*--------------------------------*/
/* Multi-byte word access macros  */

#if _WORD_ACCESS == 1 /* Enable word access to the FAT structure */
#define LD_WORD(ptr)    (WORD)(*(WORD*)(BYTE*)(ptr))
#define LD_DWORD(ptr)   (DWORD)(*(DWORD*)(BYTE*)(ptr))
#define ST_WORD(ptr,val)  *(WORD*)(BYTE*)(ptr)=(WORD)(val)
#define ST_DWORD(ptr,val) *(DWORD*)(BYTE*)(ptr)=(DWORD)(val)
#else         /* Use byte-by-byte access to the FAT structure */
#define LD_WORD(ptr)    (WORD)(((WORD)*((BYTE*)(ptr)+1)<<8)|(WORD)*(BYTE*)(ptr))
#define LD_DWORD(ptr)   (DWORD)(((DWORD)*((BYTE*)(ptr)+3)<<24)|((DWORD)*((BYTE*)(ptr)+2)<<16)|((WORD)*((BYTE*)(ptr)+1)<<8)|*(BYTE*)(ptr))
#define ST_WORD(ptr,val)  *(BYTE*)(ptr)=(BYTE)(val); *((BYTE*)(ptr)+1)=(BYTE)((WORD)(val)>>8)
#define ST_DWORD(ptr,val) *(BYTE*)(ptr)=(BYTE)(val); *((BYTE*)(ptr)+1)=(BYTE)((WORD)(val)>>8); *((BYTE*)(ptr)+2)=(BYTE)((DWORD)(val)>>16); *((BYTE*)(ptr)+3)=(BYTE)((DWORD)(val)>>24)
#endif

#ifdef __cplusplus
}
#endif

#endif /* _FATFS */

// ==== diskio.h =========================================================

/*-----------------------------------------------------------------------
/  Low level disk interface modlue include file
/-----------------------------------------------------------------------*/

#ifndef _DISKIO

#define _READONLY  0 /* 1: Remove write functions */
#define _USE_IOCTL  1 /* 1: Use disk_ioctl fucntion */

//#include "integer.h"

/* Status of Disk Functions */
typedef BYTE  DSTATUS;

/* Results of Disk Functions */
typedef enum {
  RES_OK = 0,   /* 0: Successful */
  RES_ERROR,    /* 1: R/W Error */
  RES_WRPRT,    /* 2: Write Protected */
  RES_NOTRDY,   /* 3: Not Ready */
  RES_PARERR    /* 4: Invalid Parameter */
} DRESULT;


/*---------------------------------------*/
/* Prototypes for disk control functions */

int assign_drives (int, int);
DSTATUS disk_initialize (BYTE);
DSTATUS disk_status (BYTE);
DRESULT disk_read (BYTE, BYTE*, DWORD, BYTE);
#if _READONLY == 0
DRESULT disk_write (BYTE, const BYTE*, DWORD, BYTE);
#endif
DRESULT disk_ioctl (BYTE, BYTE, void*);



/* Disk Status Bits (DSTATUS) */

#define STA_NOINIT    0x01  /* Drive not initialized */
#define STA_NODISK    0x02  /* No medium in the drive */
#define STA_PROTECT   0x04  /* Write protected */


/* Command code for disk_ioctrl fucntion */

/* Generic command (defined for FatFs) */
#define CTRL_SYNC     0 /* Flush disk cache (for write functions) */
#define GET_SECTOR_COUNT  1 /* Get media size (for only f_mkfs()) */
#define GET_SECTOR_SIZE   2 /* Get sector size (for multiple sector size (_MAX_SS >= 1024)) */
#define GET_BLOCK_SIZE    3 /* Get erase block size (for only f_mkfs()) */
#define CTRL_ERASE_SECTOR 4 /* Force erased a block of sectors (for only _USE_ERASE) */

/* Generic command */
#define CTRL_POWER      5 /* Get/Set power status */
#define CTRL_LOCK     6 /* Lock/Unlock media removal */
#define CTRL_EJECT      7 /* Eject media */

/* MMC/SDC specific ioctl command */
#define MMC_GET_TYPE    10  /* Get card type */
#define MMC_GET_CSD     11  /* Get CSD */
#define MMC_GET_CID     12  /* Get CID */
#define MMC_GET_OCR     13  /* Get OCR */
#define MMC_GET_SDSTAT    14  /* Get SD status */

/* ATA/CF specific ioctl command */
#define ATA_GET_REV     20  /* Get F/W revision */
#define ATA_GET_MODEL   21  /* Get model name */
#define ATA_GET_SN      22  /* Get serial number */

/* NAND specific ioctl command */
#define NAND_FORMAT     30  /* Create physical format */


#define _DISKIO
#endif
