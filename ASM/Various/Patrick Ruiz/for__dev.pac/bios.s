;*** BIOS ***

BIOS:MACRO f,p
 PW #\1
 TRAP #13
 IFLE \2-8
 ADDQ #\2,SP
 ELSE
 ADDA #\2,SP
 ENDC
 ENDM

PROG_VECTOR:MACRO n,v
 PL \2
 PW \1
 BIOS 5,8
 ENDM

MEMO_INIT:MACRO b
 PL \1
 BIOS 0,6
 ENDM

CONS_GINSTATE:MACRO d
 PW \1
 BIOS 1,4
 ENDM

CONS_GOUTSTATE:MACRO d
 PW \1
 BIOS 8,4
 ENDM

CONS_IN:MACRO d
 PW \1
 BIOS 2,4
 ENDM

CONS_OUT:MACRO d,c
 PW \2
 PW \1
 BIOS 3,6
 ENDM

KBRD_STATE:MACRO s
 PW \1
 BIOS 11,4
 ENDM

DISK_GMAP:MACRO
 BIOS 10,2
 ENDM

DISK_GBPB:MACRO d
 PW \1
 BIOS 7,4
 ENDM

DISK_GCHG:MACRO d
 PW \1
 BIOS 9,4
 ENDM

DISK_RW:MACRO rw,b,n,s,d
 PW \5
 PW \4
 PW \3
 PL \2
 PW \1
 BIOS 4,14
 ENDM