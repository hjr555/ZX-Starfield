; VARS
; LEGEND
; X The variables should not be poked because the system might crash
; N Poking the variable will have no lasting effect

KSTATE  equ 23552   ; N8    Used in reading the keyboard
LAST_K  equ 23560   ; N1    Stores newly pressed key
REPDEL  equ 23561   ; 1     Time (in 50ths of a second) that a key must be held down before it repeats. This starts off at 35, but you can POKE in other values.
REPPER  equ 23562   ; 1     Delay (in 50ths of a second) between successive repeats of a key held down. Initially 5.
DEFADD  equ 23563   ; N2    Address of arguments of user-defined function if one is being evaluated; otherwise 0.
K_DATA  equ 23565   ; N1    Stores 2nd byte of colour controls entered from keyboard.
TVDATA  equ 23566   ; N2    Stores bytes of colour, AT and TAB controls going to television.
STRMS   equ 23568   ; X38   Addresses of channels attached to streams.
CHARS   equ 23606   ; 2     256 less than address of charachter set (which starts with space and carries on to the copyright symbol). Normally in ROM, but you can set up your own in RAM and make CHARS point to it.
RASP    equ 23608   ; 1     Length of warning buzz.
PIP     equ 23609   ; 1     Length of keyboard click.
ERR_NR  equ 23610   ; 1     1 less than the report code. Starts off at 255 (for -1), so PEEK 23610 gives 255.
FLAGS   equ 23611   ; X1    Various flags to control the BASIC system.
TV_FLAG equ 23612   ; X1    Flags associated with the television.
ERR_SP  equ 23613   ; X2    Address of itemm on machine stack to be used as error return.
LIST_SP equ 23615   ; N2    Address of return address from automatic listing.
MODE    equ 23617   ; N1    Specifies K, L, C, E or G cursor.
NEWPPC  equ 23618   ; 2     Line to be jumped to.
NSPPC   equ 23620   ; 1     Statement number in line to be jumped to. Poking first NEWPPC and then NSPPC forces a jump to a specified statement in a line.
PPC     equ 23621   ; 2     Line number of statement currently being executed.
SUBPPC  equ 23623   ; 1
BORDCR  equ 23624   ; 1     Border colour * 8; also contains the attributes normally used for the lower half of the screen.
E_PPC   equ 23625   ; 2     Number of the current line (with program cursor).
VARS    equ 23627   ; X2    Address of variables.
DEST    equ 23629   ; N2    Address of variable in assignment.
CHANS   equ 23631   ; X2
CURCHL  equ 23633   ; X2
PROG    equ 23635   ; X2    Address of BASIC program.
NXTLIN  equ 23637   ; X2    
DATAADD equ 23639   ; X2
E_LINE  equ 23641   ; X2
K_CUR   equ 23643   ; 2     Address of cursor.
CH_ADD  equ 23645   ; X2
X_PTR   equ 23647   ; 2
WORKSP  equ 23649   ; X2    Address of temporary work space.
STKBOT  equ 23651   ; X2    Address of bottom of calculator stack.
STKEND  equ 23653   ; X2    Address of start of spare space.
BREG    equ 23655   ; N1    Calculator's b register.
MEM     equ 23656   ; N2    Address of area used for calculator's memory (Usually MEMBOT, but not always).
FLAGS2  equ 23658   ; 1     More flags.
DF_SZ   equ 23659   ; X1    The number of lines (including one blank line) in the lower part of the screen.
S_TOP   equ 23660   ; 2     The number of the top program line in automatic listings.
OLDPPC  equ 23662   ; 2     Line number to which CONTINUE jumps.
OSPCC   equ 23664   ; 1
FLAGX   equ 23665   ; N1    Various flags.
STRLEN  equ 23666   ; N2
T_ADDR  equ 23668   ; N2
SEED    equ 23670   ; 2     The seed for RND. This is the variable that is set by RANDOMIZE.
FRAMES  equ 23672   ; 3     3 byte (least significant first), frame counter. Incremented every 20ms. See Chapter 18 (of ZX Spectrum manual).
UDG     equ 23675   ; 2     Address of 1st user-defined graphic. You can change this for instance to save space by having fewer user-defined graphics.
COORDSX equ 23677   ; 1     X-coordinate of last point plotted.
COORDSY equ 23678   ; 1     Y-coordinate of last point plotted.
P_POSN  equ 23679   ; 1
PR_CC   equ 23680   ; 1
ECHO_E  equ 23682   ; 2
DF_CC   equ 23684   ; 2     Address in display file of PRINT position.
DFCCL   equ 23686   ; 2
S_POSN  equ 23688   ; X1
S_POSN2 equ 23689   ; X1
SPOSNL  equ 23690   ; X2
SCR_CT  equ 23692   ; 1
ATTR_P  equ 23693   ; 1     Permanent current colours, etc (as set up by colour statements).
MASK_P  equ 23694   ; 1     Used for transparent colours, etc. Any bit that is 1 shows that the corresponding attribute bit is taken not from ATTR P, but from what is already on the screen.
ATTR_T  equ 23695   ; N1    Temporary current colours, etc (as set up )
MASK_T  equ 23696   ; N1    Like MASK P, but temporary.
P_FLAG  equ 23697   ; 1     More flags.
MEMBOT  equ 23698   ; N30   Calculator's memory area; used to store numbers that cannot conveniently be put on the calculator stack.
RAMTOP  equ 23730   ; 2     Address of last byte of BASIC system area.
P_RAMT  equ 23732   ; 2     Address of last byte of physical RAM.