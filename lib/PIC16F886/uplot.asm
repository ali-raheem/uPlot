;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"src/uplot.c"
	list	p=16f886
	radix dec
	include "p16f886.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__mulint
	extern	__divuint
	extern	__gptrget2
	extern	__gptrput2

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_zerobuffer
	global	_uplot

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_uplot_0	udata
r0x100E	res	1
r0x100D	res	1
r0x100C	res	1
r0x1011	res	1
r0x1010	res	1
r0x100F	res	1
r0x1013	res	1
r0x1012	res	1
r0x1015	res	1
r0x1014	res	1
r0x1017	res	1
r0x1016	res	1
r0x1019	res	1
r0x1018	res	1
r0x101A	res	1
r0x101B	res	1
r0x101C	res	1
r0x101D	res	1
r0x101E	res	1
r0x101F	res	1
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
r0x1023	res	1
r0x1024	res	1
r0x1026	res	1
r0x1025	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1004	res	1
r0x1003	res	1
r0x1005	res	1
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_uplot	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrput2
;   __gptrput2
;16 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK03
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;; Starting pCode block
S_uplot__zerobuffer	code
_zerobuffer:
; 2 exit points
;	.line	26; "src/uplot.c"	void zerobuffer(unsigned int* buffer, const unsigned int len) {
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
	MOVF	STK03,W
	MOVWF	r0x1004
;	.line	28; "src/uplot.c"	for(i = 0; i < len; i++){
	CLRF	r0x1005
	CLRF	r0x1006
	CLRF	r0x1007
	CLRF	r0x1008
_00167_DS_:
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	SUBWF	r0x1006,W
	BTFSS	STATUS,2
	GOTO	_00178_DS_
	MOVF	r0x1004,W
	SUBWF	r0x1005,W
_00178_DS_:
	BTFSC	STATUS,0
	GOTO	_00169_DS_
;;genSkipc:3257: created from rifx:0xffd2ec84
;	.line	29; "src/uplot.c"	buffer[i] = 0;
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	ADDWF	r0x1002,W
	MOVWF	r0x1009
	MOVF	r0x1001,W
	MOVWF	r0x100A
	MOVF	r0x1008,W
	BTFSC	STATUS,0
	INCFSZ	r0x1008,W
	ADDWF	r0x100A,F
	MOVF	r0x1000,W
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x100B
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	__gptrput2
	CALL	__gptrput2
	PAGESEL	$
;	.line	28; "src/uplot.c"	for(i = 0; i < len; i++){
	MOVLW	0x02
	BANKSEL	r0x1007
	ADDWF	r0x1007,F
	BTFSC	STATUS,0
	INCF	r0x1008,F
	INCF	r0x1005,F
	BTFSC	STATUS,2
	INCF	r0x1006,F
	GOTO	_00167_DS_
_00169_DS_:
	RETURN	
; exit point of _zerobuffer

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __mulint
;   _zerobuffer
;   __gptrget2
;   __gptrget2
;   __gptrget2
;   __gptrget2
;   __mulint
;   __divuint
;   __mulint
;   __mulint
;   __gptrput2
;   __mulint
;   _zerobuffer
;   __gptrget2
;   __gptrget2
;   __gptrget2
;   __gptrget2
;   __mulint
;   __divuint
;   __mulint
;   __mulint
;   __gptrput2
;38 compiler assigned registers:
;   r0x100C
;   STK00
;   r0x100D
;   STK01
;   r0x100E
;   STK02
;   r0x100F
;   STK03
;   r0x1010
;   STK04
;   r0x1011
;   STK05
;   r0x1012
;   STK06
;   r0x1013
;   STK07
;   r0x1014
;   STK08
;   r0x1015
;   STK09
;   r0x1016
;   STK10
;   r0x1017
;   r0x1018
;   r0x1019
;   r0x101A
;   r0x101B
;   r0x101C
;   r0x101D
;   r0x101E
;   r0x101F
;   r0x1020
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   r0x1026
;; Starting pCode block
S_uplot__uplot	code
_uplot:
; 2 exit points
;	.line	3; "src/uplot.c"	extern int uplot(unsigned int* fb, const unsigned int* d, const unsigned int len, const unsigned int width, const unsigned int height) {
	BANKSEL	r0x100C
	MOVWF	r0x100C
	MOVF	STK00,W
	MOVWF	r0x100D
	MOVF	STK01,W
	MOVWF	r0x100E
	MOVF	STK02,W
	MOVWF	r0x100F
	MOVF	STK03,W
	MOVWF	r0x1010
	MOVF	STK04,W
	MOVWF	r0x1011
	MOVF	STK05,W
	MOVWF	r0x1012
	MOVF	STK06,W
	MOVWF	r0x1013
	MOVF	STK07,W
	MOVWF	r0x1014
	MOVF	STK08,W
	MOVWF	r0x1015
	MOVF	STK09,W
	MOVWF	r0x1016
	MOVF	STK10,W
;	.line	5; "src/uplot.c"	zerobuffer(fb, width * height);
	MOVWF	r0x1017
	MOVWF	STK02
	MOVF	r0x1016,W
	MOVWF	STK01
	MOVF	r0x1015,W
	MOVWF	STK00
	MOVF	r0x1014,W
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x1018
	MOVWF	r0x1018
	MOVF	STK00,W
	MOVWF	r0x1019
	MOVWF	STK03
	MOVF	r0x1018,W
	MOVWF	STK02
	MOVF	r0x100E,W
	MOVWF	STK01
	MOVF	r0x100D,W
	MOVWF	STK00
	MOVF	r0x100C,W
	PAGESEL	_zerobuffer
	CALL	_zerobuffer
	PAGESEL	$
;;unsigned compare: left < lit(0x2=2), size=2
;	.line	6; "src/uplot.c"	if(2 > len || 2 > width || 2 > height) {
	MOVLW	0x00
	BANKSEL	r0x1012
	SUBWF	r0x1012,W
	BTFSS	STATUS,2
	GOTO	_00154_DS_
	MOVLW	0x02
	SUBWF	r0x1013,W
_00154_DS_:
	BTFSS	STATUS,0
	GOTO	_00105_DS_
;;genSkipc:3257: created from rifx:0xffd2ec84
;;unsigned compare: left < lit(0x2=2), size=2
	MOVLW	0x00
	BANKSEL	r0x1014
	SUBWF	r0x1014,W
	BTFSS	STATUS,2
	GOTO	_00155_DS_
	MOVLW	0x02
	SUBWF	r0x1015,W
_00155_DS_:
	BTFSS	STATUS,0
	GOTO	_00105_DS_
;;genSkipc:3257: created from rifx:0xffd2ec84
;;unsigned compare: left < lit(0x2=2), size=2
	MOVLW	0x00
	BANKSEL	r0x1016
	SUBWF	r0x1016,W
	BTFSS	STATUS,2
	GOTO	_00156_DS_
	MOVLW	0x02
	SUBWF	r0x1017,W
_00156_DS_:
	BTFSC	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3257: created from rifx:0xffd2ec84
_00105_DS_:
;	.line	7; "src/uplot.c"	return -1;
	MOVLW	0xff
	MOVWF	STK00
	MOVLW	0xff
	GOTO	_00123_DS_
_00106_DS_:
;	.line	10; "src/uplot.c"	min = max = fb[0];
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	MOVWF	STK01
	MOVF	r0x100D,W
	MOVWF	STK00
	MOVF	r0x100C,W
	PAGESEL	__gptrget2
	CALL	__gptrget2
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVWF	r0x1018
	MOVF	STK00,W
	MOVWF	r0x1019
	MOVWF	r0x101A
;;99	MOVF	r0x1018,W
;	.line	11; "src/uplot.c"	for(i = 1; i < len; i++) {
	MOVLW	0x01
	MOVWF	r0x101C
	CLRF	r0x101D
	MOVLW	0x02
	MOVWF	r0x101E
	CLRF	r0x101F
	MOVLW	0x02
	MOVWF	r0x1020
	CLRF	r0x1021
_00118_DS_:
	BANKSEL	r0x1012
	MOVF	r0x1012,W
	SUBWF	r0x101D,W
	BTFSS	STATUS,2
	GOTO	_00157_DS_
	MOVF	r0x1013,W
	SUBWF	r0x101C,W
_00157_DS_:
	BTFSC	STATUS,0
	GOTO	_00113_DS_
;;genSkipc:3257: created from rifx:0xffd2ec84
;	.line	12; "src/uplot.c"	if (d[i] < min) min = d[i];
	BANKSEL	r0x101E
	MOVF	r0x101E,W
	ADDWF	r0x1011,W
	MOVWF	r0x1022
	MOVF	r0x1010,W
	MOVWF	r0x1023
	MOVF	r0x101F,W
	BTFSC	STATUS,0
	INCFSZ	r0x101F,W
	ADDWF	r0x1023,F
	MOVF	r0x100F,W
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1024
	MOVF	r0x1022,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1024,W
	PAGESEL	__gptrget2
	CALL	__gptrget2
	PAGESEL	$
	BANKSEL	r0x1025
	MOVWF	r0x1025
	MOVF	STK00,W
	MOVWF	r0x1026
	MOVF	r0x1018,W
	SUBWF	r0x1025,W
	BTFSS	STATUS,2
	GOTO	_00158_DS_
	MOVF	r0x1019,W
	SUBWF	r0x1026,W
_00158_DS_:
	BTFSC	STATUS,0
	GOTO	_00110_DS_
;;genSkipc:3257: created from rifx:0xffd2ec84
	BANKSEL	r0x1026
	MOVF	r0x1026,W
	MOVWF	r0x1019
	MOVF	r0x1025,W
	MOVWF	r0x1018
_00110_DS_:
;	.line	13; "src/uplot.c"	if (d[i] > max) max = d[i];
	BANKSEL	r0x1020
	MOVF	r0x1020,W
	ADDWF	r0x1011,W
	MOVWF	r0x1022
	MOVF	r0x1010,W
	MOVWF	r0x1023
	MOVF	r0x1021,W
	BTFSC	STATUS,0
	INCFSZ	r0x1021,W
	ADDWF	r0x1023,F
	MOVF	r0x100F,W
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1024
	MOVF	r0x1022,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1024,W
	PAGESEL	__gptrget2
	CALL	__gptrget2
	PAGESEL	$
	BANKSEL	r0x1025
	MOVWF	r0x1025
	MOVF	STK00,W
	MOVWF	r0x1026
	MOVF	r0x1025,W
	SUBWF	r0x101B,W
	BTFSS	STATUS,2
	GOTO	_00159_DS_
	MOVF	r0x1026,W
	SUBWF	r0x101A,W
_00159_DS_:
	BTFSC	STATUS,0
	GOTO	_00119_DS_
;;genSkipc:3257: created from rifx:0xffd2ec84
	BANKSEL	r0x1026
	MOVF	r0x1026,W
	MOVWF	r0x101A
	MOVF	r0x1025,W
	MOVWF	r0x101B
_00119_DS_:
;	.line	11; "src/uplot.c"	for(i = 1; i < len; i++) {
	MOVLW	0x02
	BANKSEL	r0x101E
	ADDWF	r0x101E,F
	BTFSC	STATUS,0
	INCF	r0x101F,F
	MOVLW	0x02
	ADDWF	r0x1020,F
	BTFSC	STATUS,0
	INCF	r0x1021,F
	INCF	r0x101C,F
	BTFSC	STATUS,2
	INCF	r0x101D,F
	GOTO	_00118_DS_
_00113_DS_:
;	.line	15; "src/uplot.c"	if(0 == max) {
	BANKSEL	r0x101A
	MOVF	r0x101A,W
	IORWF	r0x101B,W
	BTFSS	STATUS,2
	GOTO	_00133_DS_
;	.line	16; "src/uplot.c"	return -1;
	MOVLW	0xff
	MOVWF	STK00
	MOVLW	0xff
	GOTO	_00123_DS_
_00133_DS_:
;	.line	18; "src/uplot.c"	for(i = 0; i < len; i++) {
	MOVLW	0xff
	BANKSEL	r0x1017
	ADDWF	r0x1017,F
	BTFSS	STATUS,0
	DECF	r0x1016,F
	CLRF	r0x1019
	CLRF	r0x1018
	CLRF	r0x101C
	CLRF	r0x101D
_00121_DS_:
	BANKSEL	r0x1012
	MOVF	r0x1012,W
	SUBWF	r0x1018,W
	BTFSS	STATUS,2
	GOTO	_00160_DS_
	MOVF	r0x1013,W
	SUBWF	r0x1019,W
_00160_DS_:
	BTFSC	STATUS,0
	GOTO	_00116_DS_
;;genSkipc:3257: created from rifx:0xffd2ec84
;	.line	20; "src/uplot.c"	y = d[i] * (height - 1) / max;
	BANKSEL	r0x101C
	MOVF	r0x101C,W
	ADDWF	r0x1011,W
	MOVWF	r0x101E
	MOVF	r0x1010,W
	MOVWF	r0x101F
	MOVF	r0x101D,W
	BTFSC	STATUS,0
	INCFSZ	r0x101D,W
	ADDWF	r0x101F,F
	MOVF	r0x100F,W
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1020
	MOVF	r0x101E,W
	MOVWF	STK01
	MOVF	r0x101F,W
	MOVWF	STK00
	MOVF	r0x1020,W
	PAGESEL	__gptrget2
	CALL	__gptrget2
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1021
	MOVF	r0x1017,W
	MOVWF	STK02
	MOVF	r0x1016,W
	MOVWF	STK01
	MOVF	r0x1021,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x101F
	MOVWF	r0x101F
	MOVF	STK00,W
	MOVWF	r0x101E
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101B,W
	MOVWF	STK01
	MOVF	r0x101E,W
	MOVWF	STK00
	MOVF	r0x101F,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x101F
	MOVWF	r0x101F
	MOVF	STK00,W
;	.line	21; "src/uplot.c"	fb[(height - 1 - y) * width + x] = 1;
	MOVWF	r0x101E
	SUBWF	r0x1017,W
	MOVWF	r0x101E
	MOVF	r0x101F,W
	BTFSS	STATUS,0
	INCF	r0x101F,W
	SUBWF	r0x1016,W
	MOVWF	r0x101F
	MOVF	r0x1015,W
	MOVWF	STK02
	MOVF	r0x1014,W
	MOVWF	STK01
	MOVF	r0x101E,W
	MOVWF	STK00
	MOVF	r0x101F,W
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x101F
	MOVWF	r0x101F
	MOVF	STK00,W
	MOVWF	r0x101E
	MOVF	r0x1019,W
	ADDWF	r0x101E,F
	MOVF	r0x1018,W
	BTFSC	STATUS,0
	INCFSZ	r0x1018,W
	ADDWF	r0x101F,F
	MOVF	r0x101E,W
	MOVWF	STK02
	MOVF	r0x101F,W
	MOVWF	STK01
	MOVLW	0x02
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x101F
	MOVWF	r0x101F
	MOVF	STK00,W
	MOVWF	r0x101E
	ADDWF	r0x100E,W
	MOVWF	r0x101E
	MOVF	r0x100D,W
	MOVWF	r0x101F
	BTFSC	STATUS,0
	INCFSZ	r0x101F,W
	ADDWF	r0x101F,F
	MOVF	r0x100C,W
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1020
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x01
	MOVWF	STK03
	MOVF	r0x101E,W
	MOVWF	STK01
	MOVF	r0x101F,W
	MOVWF	STK00
	MOVF	r0x1020,W
	PAGESEL	__gptrput2
	CALL	__gptrput2
	PAGESEL	$
;	.line	18; "src/uplot.c"	for(i = 0; i < len; i++) {
	MOVLW	0x02
	BANKSEL	r0x101C
	ADDWF	r0x101C,F
	BTFSC	STATUS,0
	INCF	r0x101D,F
	INCF	r0x1019,F
	BTFSC	STATUS,2
	INCF	r0x1018,F
	GOTO	_00121_DS_
_00116_DS_:
;	.line	23; "src/uplot.c"	return i;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
_00123_DS_:
	RETURN	
; exit point of _uplot


;	code size estimation:
;	  367+   54 =   421 instructions (  950 byte)

	end
