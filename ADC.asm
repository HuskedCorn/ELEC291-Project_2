;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
; This file was generated Wed Mar 27 13:09:50 2024
;--------------------------------------------------------
$name ADC
$optc51 --model-small
$printf_float
	R_DSEG    segment data
	R_CSEG    segment code
	R_BSEG    segment bit
	R_XSEG    segment xdata
	R_PSEG    segment xdata
	R_ISEG    segment idata
	R_OSEG    segment data overlay
	BIT_BANK  segment data overlay
	R_HOME    segment code
	R_GSINIT  segment code
	R_IXSEG   segment xdata
	R_CONST   segment code
	R_XINIT   segment code
	R_DINIT   segment code

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	public _InitPinADC_PARM_2
	public _main
	public _SendATCommand
	public _waitms_or_RI1
	public _RXU1
	public _getstr1
	public _getchar1_with_timeout
	public _getchar1
	public _sendstr1
	public _putchar1
	public _UART1_Init
	public _Volts_at_Pin
	public _ADC_at_Pin
	public _InitPinADC
	public _waitms
	public _Timer3us
	public _InitADC
	public __c51_external_startup
	public _buff
;--------------------------------------------------------
; Special Function Registers
;--------------------------------------------------------
_PAGE124        DATA 0xf7ff
_ACC            DATA 0xe0
_ADC0ASAH       DATA 0xb6
_ADC0ASAL       DATA 0xb5
_ADC0ASCF       DATA 0xa1
_ADC0ASCT       DATA 0xc7
_ADC0CF0        DATA 0xbc
_ADC0CF1        DATA 0xb9
_ADC0CF2        DATA 0xdf
_ADC0CN0        DATA 0xe8
_ADC0CN1        DATA 0xb2
_ADC0CN2        DATA 0xb3
_ADC0GTH        DATA 0xc4
_ADC0GTL        DATA 0xc3
_ADC0H          DATA 0xbe
_ADC0L          DATA 0xbd
_ADC0LTH        DATA 0xc6
_ADC0LTL        DATA 0xc5
_ADC0MX         DATA 0xbb
_B              DATA 0xf0
_CKCON0         DATA 0x8e
_CKCON1         DATA 0xa6
_CLEN0          DATA 0xc6
_CLIE0          DATA 0xc7
_CLIF0          DATA 0xe8
_CLKSEL         DATA 0xa9
_CLOUT0         DATA 0xd1
_CLU0CF         DATA 0xb1
_CLU0FN         DATA 0xaf
_CLU0MX         DATA 0x84
_CLU1CF         DATA 0xb3
_CLU1FN         DATA 0xb2
_CLU1MX         DATA 0x85
_CLU2CF         DATA 0xb6
_CLU2FN         DATA 0xb5
_CLU2MX         DATA 0x91
_CLU3CF         DATA 0xbf
_CLU3FN         DATA 0xbe
_CLU3MX         DATA 0xae
_CMP0CN0        DATA 0x9b
_CMP0CN1        DATA 0x99
_CMP0MD         DATA 0x9d
_CMP0MX         DATA 0x9f
_CMP1CN0        DATA 0xbf
_CMP1CN1        DATA 0xac
_CMP1MD         DATA 0xab
_CMP1MX         DATA 0xaa
_CRC0CN0        DATA 0xce
_CRC0CN1        DATA 0x86
_CRC0CNT        DATA 0xd3
_CRC0DAT        DATA 0xcb
_CRC0FLIP       DATA 0xcf
_CRC0IN         DATA 0xca
_CRC0ST         DATA 0xd2
_DAC0CF0        DATA 0x91
_DAC0CF1        DATA 0x92
_DAC0H          DATA 0x85
_DAC0L          DATA 0x84
_DAC1CF0        DATA 0x93
_DAC1CF1        DATA 0x94
_DAC1H          DATA 0x8a
_DAC1L          DATA 0x89
_DAC2CF0        DATA 0x95
_DAC2CF1        DATA 0x96
_DAC2H          DATA 0x8c
_DAC2L          DATA 0x8b
_DAC3CF0        DATA 0x9a
_DAC3CF1        DATA 0x9c
_DAC3H          DATA 0x8e
_DAC3L          DATA 0x8d
_DACGCF0        DATA 0x88
_DACGCF1        DATA 0x98
_DACGCF2        DATA 0xa2
_DERIVID        DATA 0xad
_DEVICEID       DATA 0xb5
_DPH            DATA 0x83
_DPL            DATA 0x82
_EIE1           DATA 0xe6
_EIE2           DATA 0xf3
_EIP1           DATA 0xbb
_EIP1H          DATA 0xee
_EIP2           DATA 0xed
_EIP2H          DATA 0xf6
_EMI0CN         DATA 0xe7
_FLKEY          DATA 0xb7
_HFO0CAL        DATA 0xc7
_HFO1CAL        DATA 0xd6
_HFOCN          DATA 0xef
_I2C0ADM        DATA 0xff
_I2C0CN0        DATA 0xba
_I2C0DIN        DATA 0xbc
_I2C0DOUT       DATA 0xbb
_I2C0FCN0       DATA 0xad
_I2C0FCN1       DATA 0xab
_I2C0FCT        DATA 0xf5
_I2C0SLAD       DATA 0xbd
_I2C0STAT       DATA 0xb9
_IE             DATA 0xa8
_IP             DATA 0xb8
_IPH            DATA 0xf2
_IT01CF         DATA 0xe4
_LFO0CN         DATA 0xb1
_P0             DATA 0x80
_P0MASK         DATA 0xfe
_P0MAT          DATA 0xfd
_P0MDIN         DATA 0xf1
_P0MDOUT        DATA 0xa4
_P0SKIP         DATA 0xd4
_P1             DATA 0x90
_P1MASK         DATA 0xee
_P1MAT          DATA 0xed
_P1MDIN         DATA 0xf2
_P1MDOUT        DATA 0xa5
_P1SKIP         DATA 0xd5
_P2             DATA 0xa0
_P2MASK         DATA 0xfc
_P2MAT          DATA 0xfb
_P2MDIN         DATA 0xf3
_P2MDOUT        DATA 0xa6
_P2SKIP         DATA 0xcc
_P3             DATA 0xb0
_P3MDIN         DATA 0xf4
_P3MDOUT        DATA 0x9c
_PCA0CENT       DATA 0x9e
_PCA0CLR        DATA 0x9c
_PCA0CN0        DATA 0xd8
_PCA0CPH0       DATA 0xfc
_PCA0CPH1       DATA 0xea
_PCA0CPH2       DATA 0xec
_PCA0CPH3       DATA 0xf5
_PCA0CPH4       DATA 0x85
_PCA0CPH5       DATA 0xde
_PCA0CPL0       DATA 0xfb
_PCA0CPL1       DATA 0xe9
_PCA0CPL2       DATA 0xeb
_PCA0CPL3       DATA 0xf4
_PCA0CPL4       DATA 0x84
_PCA0CPL5       DATA 0xdd
_PCA0CPM0       DATA 0xda
_PCA0CPM1       DATA 0xdb
_PCA0CPM2       DATA 0xdc
_PCA0CPM3       DATA 0xae
_PCA0CPM4       DATA 0xaf
_PCA0CPM5       DATA 0xcc
_PCA0H          DATA 0xfa
_PCA0L          DATA 0xf9
_PCA0MD         DATA 0xd9
_PCA0POL        DATA 0x96
_PCA0PWM        DATA 0xf7
_PCON0          DATA 0x87
_PCON1          DATA 0xcd
_PFE0CN         DATA 0xc1
_PRTDRV         DATA 0xf6
_PSCTL          DATA 0x8f
_PSTAT0         DATA 0xaa
_PSW            DATA 0xd0
_REF0CN         DATA 0xd1
_REG0CN         DATA 0xc9
_REVID          DATA 0xb6
_RSTSRC         DATA 0xef
_SBCON1         DATA 0x94
_SBRLH1         DATA 0x96
_SBRLL1         DATA 0x95
_SBUF           DATA 0x99
_SBUF0          DATA 0x99
_SBUF1          DATA 0x92
_SCON           DATA 0x98
_SCON0          DATA 0x98
_SCON1          DATA 0xc8
_SFRPAGE        DATA 0xa7
_SFRPGCN        DATA 0xbc
_SFRSTACK       DATA 0xd7
_SMB0ADM        DATA 0xd6
_SMB0ADR        DATA 0xd7
_SMB0CF         DATA 0xc1
_SMB0CN0        DATA 0xc0
_SMB0DAT        DATA 0xc2
_SMB0FCN0       DATA 0xc3
_SMB0FCN1       DATA 0xc4
_SMB0FCT        DATA 0xef
_SMB0RXLN       DATA 0xc5
_SMB0TC         DATA 0xac
_SMOD1          DATA 0x93
_SP             DATA 0x81
_SPI0CFG        DATA 0xa1
_SPI0CKR        DATA 0xa2
_SPI0CN0        DATA 0xf8
_SPI0DAT        DATA 0xa3
_SPI0FCN0       DATA 0x9a
_SPI0FCN1       DATA 0x9b
_SPI0FCT        DATA 0xf7
_SPI0PCF        DATA 0xdf
_TCON           DATA 0x88
_TH0            DATA 0x8c
_TH1            DATA 0x8d
_TL0            DATA 0x8a
_TL1            DATA 0x8b
_TMOD           DATA 0x89
_TMR2CN0        DATA 0xc8
_TMR2CN1        DATA 0xfd
_TMR2H          DATA 0xcf
_TMR2L          DATA 0xce
_TMR2RLH        DATA 0xcb
_TMR2RLL        DATA 0xca
_TMR3CN0        DATA 0x91
_TMR3CN1        DATA 0xfe
_TMR3H          DATA 0x95
_TMR3L          DATA 0x94
_TMR3RLH        DATA 0x93
_TMR3RLL        DATA 0x92
_TMR4CN0        DATA 0x98
_TMR4CN1        DATA 0xff
_TMR4H          DATA 0xa5
_TMR4L          DATA 0xa4
_TMR4RLH        DATA 0xa3
_TMR4RLL        DATA 0xa2
_TMR5CN0        DATA 0xc0
_TMR5CN1        DATA 0xf1
_TMR5H          DATA 0xd5
_TMR5L          DATA 0xd4
_TMR5RLH        DATA 0xd3
_TMR5RLL        DATA 0xd2
_UART0PCF       DATA 0xd9
_UART1FCN0      DATA 0x9d
_UART1FCN1      DATA 0xd8
_UART1FCT       DATA 0xfa
_UART1LIN       DATA 0x9e
_UART1PCF       DATA 0xda
_VDM0CN         DATA 0xff
_WDTCN          DATA 0x97
_XBR0           DATA 0xe1
_XBR1           DATA 0xe2
_XBR2           DATA 0xe3
_XOSC0CN        DATA 0x86
_DPTR           DATA 0x8382
_TMR2RL         DATA 0xcbca
_TMR3RL         DATA 0x9392
_TMR4RL         DATA 0xa3a2
_TMR5RL         DATA 0xd3d2
_TMR0           DATA 0x8c8a
_TMR1           DATA 0x8d8b
_TMR2           DATA 0xcfce
_TMR3           DATA 0x9594
_TMR4           DATA 0xa5a4
_TMR5           DATA 0xd5d4
_SBRL1          DATA 0x9695
_PCA0           DATA 0xfaf9
_PCA0CP0        DATA 0xfcfb
_PCA0CP1        DATA 0xeae9
_PCA0CP2        DATA 0xeceb
_PCA0CP3        DATA 0xf5f4
_PCA0CP4        DATA 0x8584
_PCA0CP5        DATA 0xdedd
_ADC0ASA        DATA 0xb6b5
_ADC0GT         DATA 0xc4c3
_ADC0           DATA 0xbebd
_ADC0LT         DATA 0xc6c5
_DAC0           DATA 0x8584
_DAC1           DATA 0x8a89
_DAC2           DATA 0x8c8b
_DAC3           DATA 0x8e8d
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_ACC_0          BIT 0xe0
_ACC_1          BIT 0xe1
_ACC_2          BIT 0xe2
_ACC_3          BIT 0xe3
_ACC_4          BIT 0xe4
_ACC_5          BIT 0xe5
_ACC_6          BIT 0xe6
_ACC_7          BIT 0xe7
_TEMPE          BIT 0xe8
_ADGN0          BIT 0xe9
_ADGN1          BIT 0xea
_ADWINT         BIT 0xeb
_ADBUSY         BIT 0xec
_ADINT          BIT 0xed
_IPOEN          BIT 0xee
_ADEN           BIT 0xef
_B_0            BIT 0xf0
_B_1            BIT 0xf1
_B_2            BIT 0xf2
_B_3            BIT 0xf3
_B_4            BIT 0xf4
_B_5            BIT 0xf5
_B_6            BIT 0xf6
_B_7            BIT 0xf7
_C0FIF          BIT 0xe8
_C0RIF          BIT 0xe9
_C1FIF          BIT 0xea
_C1RIF          BIT 0xeb
_C2FIF          BIT 0xec
_C2RIF          BIT 0xed
_C3FIF          BIT 0xee
_C3RIF          BIT 0xef
_D1SRC0         BIT 0x88
_D1SRC1         BIT 0x89
_D1AMEN         BIT 0x8a
_D01REFSL       BIT 0x8b
_D3SRC0         BIT 0x8c
_D3SRC1         BIT 0x8d
_D3AMEN         BIT 0x8e
_D23REFSL       BIT 0x8f
_D0UDIS         BIT 0x98
_D1UDIS         BIT 0x99
_D2UDIS         BIT 0x9a
_D3UDIS         BIT 0x9b
_EX0            BIT 0xa8
_ET0            BIT 0xa9
_EX1            BIT 0xaa
_ET1            BIT 0xab
_ES0            BIT 0xac
_ET2            BIT 0xad
_ESPI0          BIT 0xae
_EA             BIT 0xaf
_PX0            BIT 0xb8
_PT0            BIT 0xb9
_PX1            BIT 0xba
_PT1            BIT 0xbb
_PS0            BIT 0xbc
_PT2            BIT 0xbd
_PSPI0          BIT 0xbe
_P0_0           BIT 0x80
_P0_1           BIT 0x81
_P0_2           BIT 0x82
_P0_3           BIT 0x83
_P0_4           BIT 0x84
_P0_5           BIT 0x85
_P0_6           BIT 0x86
_P0_7           BIT 0x87
_P1_0           BIT 0x90
_P1_1           BIT 0x91
_P1_2           BIT 0x92
_P1_3           BIT 0x93
_P1_4           BIT 0x94
_P1_5           BIT 0x95
_P1_6           BIT 0x96
_P1_7           BIT 0x97
_P2_0           BIT 0xa0
_P2_1           BIT 0xa1
_P2_2           BIT 0xa2
_P2_3           BIT 0xa3
_P2_4           BIT 0xa4
_P2_5           BIT 0xa5
_P2_6           BIT 0xa6
_P3_0           BIT 0xb0
_P3_1           BIT 0xb1
_P3_2           BIT 0xb2
_P3_3           BIT 0xb3
_P3_4           BIT 0xb4
_P3_7           BIT 0xb7
_CCF0           BIT 0xd8
_CCF1           BIT 0xd9
_CCF2           BIT 0xda
_CCF3           BIT 0xdb
_CCF4           BIT 0xdc
_CCF5           BIT 0xdd
_CR             BIT 0xde
_CF             BIT 0xdf
_PARITY         BIT 0xd0
_F1             BIT 0xd1
_OV             BIT 0xd2
_RS0            BIT 0xd3
_RS1            BIT 0xd4
_F0             BIT 0xd5
_AC             BIT 0xd6
_CY             BIT 0xd7
_RI             BIT 0x98
_TI             BIT 0x99
_RB8            BIT 0x9a
_TB8            BIT 0x9b
_REN            BIT 0x9c
_CE             BIT 0x9d
_SMODE          BIT 0x9e
_RI1            BIT 0xc8
_TI1            BIT 0xc9
_RBX1           BIT 0xca
_TBX1           BIT 0xcb
_REN1           BIT 0xcc
_PERR1          BIT 0xcd
_OVR1           BIT 0xce
_SI             BIT 0xc0
_ACK            BIT 0xc1
_ARBLOST        BIT 0xc2
_ACKRQ          BIT 0xc3
_STO            BIT 0xc4
_STA            BIT 0xc5
_TXMODE         BIT 0xc6
_MASTER         BIT 0xc7
_SPIEN          BIT 0xf8
_TXNF           BIT 0xf9
_NSSMD0         BIT 0xfa
_NSSMD1         BIT 0xfb
_RXOVRN         BIT 0xfc
_MODF           BIT 0xfd
_WCOL           BIT 0xfe
_SPIF           BIT 0xff
_IT0            BIT 0x88
_IE0            BIT 0x89
_IT1            BIT 0x8a
_IE1            BIT 0x8b
_TR0            BIT 0x8c
_TF0            BIT 0x8d
_TR1            BIT 0x8e
_TF1            BIT 0x8f
_T2XCLK0        BIT 0xc8
_T2XCLK1        BIT 0xc9
_TR2            BIT 0xca
_T2SPLIT        BIT 0xcb
_TF2CEN         BIT 0xcc
_TF2LEN         BIT 0xcd
_TF2L           BIT 0xce
_TF2H           BIT 0xcf
_T4XCLK0        BIT 0x98
_T4XCLK1        BIT 0x99
_TR4            BIT 0x9a
_T4SPLIT        BIT 0x9b
_TF4CEN         BIT 0x9c
_TF4LEN         BIT 0x9d
_TF4L           BIT 0x9e
_TF4H           BIT 0x9f
_T5XCLK0        BIT 0xc0
_T5XCLK1        BIT 0xc1
_TR5            BIT 0xc2
_T5SPLIT        BIT 0xc3
_TF5CEN         BIT 0xc4
_TF5LEN         BIT 0xc5
_TF5L           BIT 0xc6
_TF5H           BIT 0xc7
_RIE            BIT 0xd8
_RXTO0          BIT 0xd9
_RXTO1          BIT 0xda
_RFRQ           BIT 0xdb
_TIE            BIT 0xdc
_TXHOLD         BIT 0xdd
_TXNF1          BIT 0xde
_TFRQ           BIT 0xdf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	rbank0 segment data overlay
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
_main_v_1_125:
	ds 8
_main_vRef_1_125:
	ds 4
_main_sloc0_1_0:
	ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg	R_OSEG
	rseg	R_OSEG
_InitPinADC_PARM_2:
	ds 1
	rseg	R_OSEG
	rseg	R_OSEG
	rseg	R_OSEG
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	rseg R_ISEG
_buff:
	ds 20
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	DSEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	rseg R_BSEG
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	rseg R_PSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	rseg R_XSEG
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	XSEG
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	rseg R_IXSEG
	rseg R_HOME
	rseg R_GSINIT
	rseg R_CSEG
;--------------------------------------------------------
; Reset entry point and interrupt vectors
;--------------------------------------------------------
	CSEG at 0x0000
	ljmp	_crt0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	rseg R_HOME
	rseg R_GSINIT
	rseg R_GSINIT
;--------------------------------------------------------
; data variables initialization
;--------------------------------------------------------
	rseg R_DINIT
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	ADC.c:21: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	ADC.c:24: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	ADC.c:25: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	ADC.c:26: WDTCN = 0xAD; //Second key
	mov	_WDTCN,#0xAD
;	ADC.c:28: VDM0CN=0x80;       // enable VDD monitor
	mov	_VDM0CN,#0x80
;	ADC.c:29: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	ADC.c:36: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	ADC.c:37: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	ADC.c:38: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	ADC.c:59: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	ADC.c:60: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	ADC.c:61: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	ADC.c:62: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	ADC.c:63: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	ADC.c:64: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	ADC.c:69: P0MDOUT |= 0x11; // Enable UART0 TX (P0.4) and UART1 TX (P0.0) as push-pull outputs
	orl	_P0MDOUT,#0x11
;	ADC.c:70: P2MDOUT |= 0x01; // P2.0 in push-pull mode
	orl	_P2MDOUT,#0x01
;	ADC.c:71: XBR0     = 0x01; // Enable UART0 on P0.4(TX) and P0.5(RX)                     
	mov	_XBR0,#0x01
;	ADC.c:72: XBR1     = 0X00;
	mov	_XBR1,#0x00
;	ADC.c:73: XBR2     = 0x41; // Enable crossbar and uart 1
	mov	_XBR2,#0x41
;	ADC.c:79: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	ADC.c:80: TH1 = 0x100-((SYSCLK/BAUDRATE)/(2L*12L));
	mov	_TH1,#0xE6
;	ADC.c:81: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	ADC.c:82: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	ADC.c:83: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	ADC.c:84: TR1 = 1; // START Timer1
	setb	_TR1
;	ADC.c:85: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	ADC.c:87: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	ADC.c:90: void InitADC (void)
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	ADC.c:92: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	ADC.c:93: ADEN=0; // Disable ADC
	clr	_ADEN
;	ADC.c:98: (0x0 << 0) ; // Accumulate n conversions: 0x0: 1, 0x1:4, 0x2:8, 0x3:16, 0x4:32
	mov	_ADC0CN1,#0x80
;	ADC.c:102: (0x0 << 2); // 0:SYSCLK ADCCLK = SYSCLK. 1:HFOSC0 ADCCLK = HFOSC0.
	mov	_ADC0CF0,#0x20
;	ADC.c:106: (0x1E << 0); // Conversion Tracking Time. Tadtk = ADTK / (Fsarclk)
	mov	_ADC0CF1,#0x1E
;	ADC.c:115: (0x0 << 0) ; // TEMPE. 0: Disable the Temperature Sensor. 1: Enable the Temperature Sensor.
	mov	_ADC0CN0,#0x00
;	ADC.c:120: (0x1F << 0); // ADPWR. Power Up Delay Time. Tpwrtime = ((4 * (ADPWR + 1)) + 2) / (Fadcclk)
	mov	_ADC0CF2,#0x3F
;	ADC.c:124: (0x0 << 0) ; // ADCM. 0x0: ADBUSY, 0x1: TIMER0, 0x2: TIMER2, 0x3: TIMER3, 0x4: CNVSTR, 0x5: CEX5, 0x6: TIMER4, 0x7: TIMER5, 0x8: CLU0, 0x9: CLU1, 0xA: CLU2, 0xB: CLU3
	mov	_ADC0CN2,#0x00
;	ADC.c:126: ADEN=1; // Enable ADC
	setb	_ADEN
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	ADC.c:130: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	ADC.c:135: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	ADC.c:137: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	ADC.c:138: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	ADC.c:140: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	ADC.c:141: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L004004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L004007?
;	ADC.c:143: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L004001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L004001?
;	ADC.c:144: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	ADC.c:141: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L004004?
L004007?:
;	ADC.c:146: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	ADC.c:149: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	ADC.c:153: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L005005?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L005009?
;	ADC.c:154: for (k=0; k<4; k++) Timer3us(250);
	mov	r6,#0x00
L005001?:
	cjne	r6,#0x04,L005018?
L005018?:
	jnc	L005007?
	mov	dpl,#0xFA
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_Timer3us
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r6
	sjmp	L005001?
L005007?:
;	ADC.c:153: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L005005?
	inc	r5
	sjmp	L005005?
L005009?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pin_num                   Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	ADC.c:159: void InitPinADC (unsigned char portno, unsigned char pin_num)
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
;	ADC.c:163: mask=1<<pin_num;
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L006013?
L006011?:
	add	a,acc
L006013?:
	djnz	b,L006011?
	mov	r3,a
;	ADC.c:165: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	ADC.c:166: switch (portno)
	cjne	r2,#0x00,L006014?
	sjmp	L006001?
L006014?:
	cjne	r2,#0x01,L006015?
	sjmp	L006002?
L006015?:
;	ADC.c:168: case 0:
	cjne	r2,#0x02,L006005?
	sjmp	L006003?
L006001?:
;	ADC.c:169: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P0MDIN,a
;	ADC.c:170: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	ADC.c:171: break;
;	ADC.c:172: case 1:
	sjmp	L006005?
L006002?:
;	ADC.c:173: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P1MDIN,a
;	ADC.c:174: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	ADC.c:175: break;
;	ADC.c:176: case 2:
	sjmp	L006005?
L006003?:
;	ADC.c:177: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P2MDIN,a
;	ADC.c:178: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	ADC.c:182: }
L006005?:
;	ADC.c:183: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
;	ADC.c:186: unsigned int ADC_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_ADC0MX,dpl
;	ADC.c:189: ADINT = 0;
	clr	_ADINT
;	ADC.c:190: ADBUSY = 1;     // Convert voltage at the pin
	setb	_ADBUSY
;	ADC.c:191: while (!ADINT); // Wait for conversion to complete
L007001?:
	jnb	_ADINT,L007001?
;	ADC.c:192: return (ADC0);
	mov	dpl,_ADC0
	mov	dph,(_ADC0 >> 8)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Volts_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers r2 
;------------------------------------------------------------
;	ADC.c:195: float Volts_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function Volts_at_Pin
;	-----------------------------------------
_Volts_at_Pin:
;	ADC.c:197: return ((ADC_at_Pin(pin)*VDD)/16383.0);
	lcall	_ADC_at_Pin
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x6C8B
	mov	b,#0x53
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	mov	a,#0xFC
	push	acc
	mov	a,#0x7F
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART1_Init'
;------------------------------------------------------------
;baudrate                  Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	ADC.c:201: void UART1_Init (unsigned long baudrate)
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
_UART1_Init:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	ADC.c:203: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	ADC.c:204: SMOD1 = 0x0C; // no parity, 8 data bits, 1 stop bit
	mov	_SMOD1,#0x0C
;	ADC.c:205: SCON1 = 0x10;
	mov	_SCON1,#0x10
;	ADC.c:206: SBCON1 =0x00;   // disable baud rate generator
	mov	_SBCON1,#0x00
;	ADC.c:207: SBRL1 = 0x10000L-((SYSCLK/baudrate)/(12L*2L));
	mov	__divulong_PARM_2,r2
	mov	(__divulong_PARM_2 + 1),r3
	mov	(__divulong_PARM_2 + 2),r4
	mov	(__divulong_PARM_2 + 3),r5
	mov	dptr,#0xA200
	mov	b,#0x4A
	mov	a,#0x04
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	__divulong_PARM_2,#0x18
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	clr	a
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	a,#0x01
	subb	a,r4
	clr	a
	subb	a,r5
	mov	_SBRL1,r2
	mov	(_SBRL1 >> 8),r3
;	ADC.c:208: TI1 = 1; // indicate ready for TX
	setb	_TI1
;	ADC.c:209: SBCON1 |= 0x40;   // enable baud rate generator
	orl	_SBCON1,#0x40
;	ADC.c:210: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar1'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	ADC.c:213: void putchar1 (char c) 
;	-----------------------------------------
;	 function putchar1
;	-----------------------------------------
_putchar1:
	mov	r2,dpl
;	ADC.c:215: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	ADC.c:216: while (!TI1);
L010001?:
;	ADC.c:217: TI1=0;
	jbc	_TI1,L010008?
	sjmp	L010001?
L010008?:
;	ADC.c:218: SBUF1 = c;
	mov	_SBUF1,r2
;	ADC.c:219: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendstr1'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	ADC.c:222: void sendstr1 (char * s)
;	-----------------------------------------
;	 function sendstr1
;	-----------------------------------------
_sendstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	ADC.c:224: while(*s)
L011001?:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	L011004?
;	ADC.c:226: putchar1(*s);
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_putchar1
	pop	ar4
	pop	ar3
	pop	ar2
;	ADC.c:227: s++;	
	inc	r2
	cjne	r2,#0x00,L011001?
	inc	r3
	sjmp	L011001?
L011004?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar1'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	ADC.c:231: char getchar1 (void)
;	-----------------------------------------
;	 function getchar1
;	-----------------------------------------
_getchar1:
;	ADC.c:234: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	ADC.c:235: while (!RI1);
L012001?:
;	ADC.c:236: RI1=0;
	jbc	_RI1,L012008?
	sjmp	L012001?
L012008?:
;	ADC.c:238: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	ADC.c:239: c = SBUF1;
	mov	dpl,_SBUF1
;	ADC.c:240: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	ADC.c:241: return (c);
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar1_with_timeout'
;------------------------------------------------------------
;c                         Allocated to registers 
;timeout                   Allocated to registers r2 r3 
;------------------------------------------------------------
;	ADC.c:244: char getchar1_with_timeout (void)
;	-----------------------------------------
;	 function getchar1_with_timeout
;	-----------------------------------------
_getchar1_with_timeout:
;	ADC.c:248: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	ADC.c:250: while (!RI1)
	mov	r2,#0x00
	mov	r3,#0x00
L013003?:
	jb	_RI1,L013005?
;	ADC.c:252: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	ADC.c:253: Timer3us(20);
	mov	dpl,#0x14
	push	ar2
	push	ar3
	lcall	_Timer3us
	pop	ar3
	pop	ar2
;	ADC.c:254: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	ADC.c:255: timeout++;
	inc	r2
	cjne	r2,#0x00,L013012?
	inc	r3
L013012?:
;	ADC.c:256: if(timeout==25000)
	cjne	r2,#0xA8,L013003?
	cjne	r3,#0x61,L013003?
;	ADC.c:258: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	ADC.c:259: return ('\n'); // Timeout after half second
	mov	dpl,#0x0A
	ret
L013005?:
;	ADC.c:262: RI1=0;
	clr	_RI1
;	ADC.c:264: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	ADC.c:265: c = SBUF1;
	mov	dpl,_SBUF1
;	ADC.c:266: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	ADC.c:267: return (c);
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr1'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;c                         Allocated to registers r5 
;------------------------------------------------------------
;	ADC.c:270: void getstr1 (char * s)
;	-----------------------------------------
;	 function getstr1
;	-----------------------------------------
_getstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	ADC.c:274: while(1)
L014004?:
;	ADC.c:276: c=getchar1_with_timeout();
	push	ar2
	push	ar3
	push	ar4
	lcall	_getchar1_with_timeout
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	ADC.c:277: if(c=='\n')
	cjne	r5,#0x0A,L014002?
;	ADC.c:279: *s=0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	ADC.c:280: return;
	ljmp	__gptrput
L014002?:
;	ADC.c:282: *s=c;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	ADC.c:283: s++;
	sjmp	L014004?
;------------------------------------------------------------
;Allocation info for local variables in function 'RXU1'
;------------------------------------------------------------
;------------------------------------------------------------
;	ADC.c:288: bit RXU1 (void)
;	-----------------------------------------
;	 function RXU1
;	-----------------------------------------
_RXU1:
;	ADC.c:291: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	ADC.c:292: mybit=RI1;
	mov	c,_RI1
;	ADC.c:293: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	ADC.c:294: return mybit;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms_or_RI1'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	ADC.c:297: void waitms_or_RI1 (unsigned int ms)
;	-----------------------------------------
;	 function waitms_or_RI1
;	-----------------------------------------
_waitms_or_RI1:
	mov	r2,dpl
	mov	r3,dph
;	ADC.c:301: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L016007?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L016011?
;	ADC.c:303: for (k=0; k<4; k++)
	mov	r6,#0x00
L016003?:
	cjne	r6,#0x04,L016019?
L016019?:
	jnc	L016009?
;	ADC.c:305: if(RXU1()) return;
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_RXU1
	clr	a
	rlc	a
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	jz	L016002?
	ret
L016002?:
;	ADC.c:306: Timer3us(250);
	mov	dpl,#0xFA
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_Timer3us
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	ADC.c:303: for (k=0; k<4; k++)
	inc	r6
	sjmp	L016003?
L016009?:
;	ADC.c:301: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L016007?
	inc	r5
	sjmp	L016007?
L016011?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendATCommand'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	ADC.c:311: void SendATCommand (char * s)
;	-----------------------------------------
;	 function SendATCommand
;	-----------------------------------------
_SendATCommand:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	ADC.c:313: printf("Command: %s", s);
	push	ar2
	push	ar3
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	ADC.c:314: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	ADC.c:315: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
	pop	ar4
	pop	ar3
	pop	ar2
;	ADC.c:316: sendstr1(s);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_sendstr1
;	ADC.c:317: getstr1(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
;	ADC.c:318: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	ADC.c:319: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	ADC.c:320: printf("Response: %s\r\n", buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;cnt                       Allocated to registers 
;vXYScalingFactor          Allocated to registers 
;v                         Allocated with name '_main_v_1_125'
;vRef                      Allocated with name '_main_vRef_1_125'
;vMax                      Allocated to registers 
;Q1                        Allocated to registers 
;Q2                        Allocated to registers 
;Q3                        Allocated to registers 
;Q4                        Allocated to registers 
;Quadrant                  Allocated to registers 
;pwm_left_motor            Allocated to registers 
;pwm_right_motor           Allocated to registers 
;right_motor_dir           Allocated to registers 
;left_motor_dir            Allocated to registers 
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	ADC.c:323: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	ADC.c:335: waitms(500); // Give PuTTy a chance to start before sending
	mov	dptr,#0x01F4
	lcall	_waitms
;	ADC.c:336: printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	ADC.c:341: __FILE__, __DATE__, __TIME__);
;	ADC.c:340: "Compiled: %s, %s\n\n",
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
;	ADC.c:343: InitPinADC(0, 7); // Configure P0.7 as analog input
	mov	_InitPinADC_PARM_2,#0x07
	mov	dpl,#0x00
	lcall	_InitPinADC
;	ADC.c:344: InitPinADC(0, 6); // Configure P0.6 as analog input
	mov	_InitPinADC_PARM_2,#0x06
	mov	dpl,#0x00
	lcall	_InitPinADC
;	ADC.c:345: InitADC();
	lcall	_InitADC
;	ADC.c:347: vRef = Volts_at_Pin(QFP32_MUX_P0_6);
	mov	dpl,#0x04
	lcall	_Volts_at_Pin
	mov	_main_vRef_1_125,dpl
	mov	(_main_vRef_1_125 + 1),dph
	mov	(_main_vRef_1_125 + 2),b
	mov	(_main_vRef_1_125 + 3),a
;	ADC.c:349: Q1 = (vMax-vRef)*sqrtf(2.0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x40
	lcall	_sqrtf
;	ADC.c:354: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	ADC.c:355: printf("\r\nJDY-40 test\r\n");
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	ADC.c:356: UART1_Init(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_UART1_Init
;	ADC.c:372: SendATCommand("AT+DVIDABBA\r\n");  
	mov	dptr,#__str_8
	mov	b,#0x80
	lcall	_SendATCommand
;	ADC.c:375: SendATCommand("AT+VER\r\n");
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_SendATCommand
;	ADC.c:376: SendATCommand("AT+BAUD\r\n");
	mov	dptr,#__str_10
	mov	b,#0x80
	lcall	_SendATCommand
;	ADC.c:377: SendATCommand("AT+RFID\r\n");
	mov	dptr,#__str_11
	mov	b,#0x80
	lcall	_SendATCommand
;	ADC.c:378: SendATCommand("AT+DVID\r\n");
	mov	dptr,#__str_12
	mov	b,#0x80
	lcall	_SendATCommand
;	ADC.c:379: SendATCommand("AT+RFC\r\n");
	mov	dptr,#__str_13
	mov	b,#0x80
	lcall	_SendATCommand
;	ADC.c:380: SendATCommand("AT+POWE\r\n");
	mov	dptr,#__str_14
	mov	b,#0x80
	lcall	_SendATCommand
;	ADC.c:381: SendATCommand("AT+CLSS\r\n");
	mov	dptr,#__str_15
	mov	b,#0x80
	lcall	_SendATCommand
;	ADC.c:383: printf("\r\Press and hold the BOOT button to transmit.\r\n");
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	ADC.c:387: while(1)
L018040?:
;	ADC.c:390: v[0] = Volts_at_Pin(QFP32_MUX_P0_7); //vRy
	mov	dpl,#0x05
	lcall	_Volts_at_Pin
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	mov	_main_v_1_125,r6
	mov	(_main_v_1_125 + 1),r7
	mov	(_main_v_1_125 + 2),r2
	mov	(_main_v_1_125 + 3),r3
;	ADC.c:391: v[1] = Volts_at_Pin(QFP32_MUX_P0_6); // vRx
	mov	dpl,#0x04
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	(_main_v_1_125 + 0x0004),r2
	mov	((_main_v_1_125 + 0x0004) + 1),r3
	mov	((_main_v_1_125 + 0x0004) + 2),r4
	mov	((_main_v_1_125 + 0x0004) + 3),r5
;	ADC.c:393: if(v[1] - 0.2 > vRef && v[0] - 0.2 > vRef) //Quadrant 1 (Top Right)
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018064?
	ljmp	L018030?
L018064?:
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018065?
	ljmp	L018030?
L018065?:
;	ADC.c:395: pwm_right_motor = (sqrtf(0 + powf(v[0] - vRef,2.0))/Q1)*100.0;
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	lcall	_sqrtf
;	ADC.c:396: pwm_left_motor = (sqrtf(powf(v[1] - vRef,2.0) + powf(v[0] - vRef,2.0))/Q1)*100.0;
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,(_main_v_1_125 + 0x0004)
	mov	dph,((_main_v_1_125 + 0x0004) + 1)
	mov	b,((_main_v_1_125 + 0x0004) + 2)
	mov	a,((_main_v_1_125 + 0x0004) + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r3
	lcall	_powf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_sqrtf
;	ADC.c:398: Quadrant = 1;
	ljmp	L018034?
L018030?:
;	ADC.c:401: else if(v[1] + 0.2 < vRef && v[0] - 0.2 > vRef) //Quadrant 2 (Top Left)
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,(_main_v_1_125 + 0x0004)
	mov	dph,((_main_v_1_125 + 0x0004) + 1)
	mov	b,((_main_v_1_125 + 0x0004) + 2)
	mov	a,((_main_v_1_125 + 0x0004) + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018066?
	ljmp	L018026?
L018066?:
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018067?
	ljmp	L018026?
L018067?:
;	ADC.c:403: pwm_right_motor = (sqrtf(powf(v[0] - vRef,2.0) + powf(vXYScalingFactor*(vRef - v[1]),2.0))/Q2)*100.0;
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	push	(_main_v_1_125 + 0x0004)
	push	((_main_v_1_125 + 0x0004) + 1)
	push	((_main_v_1_125 + 0x0004) + 2)
	push	((_main_v_1_125 + 0x0004) + 3)
	mov	dpl,_main_vRef_1_125
	mov	dph,(_main_vRef_1_125 + 1)
	mov	b,(_main_vRef_1_125 + 2)
	mov	a,(_main_vRef_1_125 + 3)
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	dptr,#0xD09E
	mov	b,#0xD2
	mov	a,#0x3E
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_sqrtf
;	ADC.c:404: pwm_left_motor = (sqrtf(0 + powf(v[0]-vRef,2.0))/Q2)*100.0;
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	lcall	_sqrtf
;	ADC.c:406: Quadrant = 2;
	ljmp	L018034?
L018026?:
;	ADC.c:408: else if(v[1] + 0.2 < vRef && v[0] + 0.2 < vRef) //Quadrant 3 (Bottom Left)
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,(_main_v_1_125 + 0x0004)
	mov	dph,((_main_v_1_125 + 0x0004) + 1)
	mov	b,((_main_v_1_125 + 0x0004) + 2)
	mov	a,((_main_v_1_125 + 0x0004) + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018068?
	ljmp	L018022?
L018068?:
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018069?
	ljmp	L018022?
L018069?:
;	ADC.c:410: pwm_right_motor = (sqrtf(powf(vXYScalingFactor*(vRef - v[0]),2.0) + powf(vXYScalingFactor*(vRef - v[1]),2.0))/Q3)*100.0;
	push	_main_v_1_125
	push	(_main_v_1_125 + 1)
	push	(_main_v_1_125 + 2)
	push	(_main_v_1_125 + 3)
	mov	dpl,_main_vRef_1_125
	mov	dph,(_main_vRef_1_125 + 1)
	mov	b,(_main_vRef_1_125 + 2)
	mov	a,(_main_vRef_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xD09E
	mov	b,#0xD2
	mov	a,#0x3E
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	push	(_main_v_1_125 + 0x0004)
	push	((_main_v_1_125 + 0x0004) + 1)
	push	((_main_v_1_125 + 0x0004) + 2)
	push	((_main_v_1_125 + 0x0004) + 3)
	mov	dpl,_main_vRef_1_125
	mov	dph,(_main_vRef_1_125 + 1)
	mov	b,(_main_vRef_1_125 + 2)
	mov	a,(_main_vRef_1_125 + 3)
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	dptr,#0xD09E
	mov	b,#0xD2
	mov	a,#0x3E
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_sqrtf
;	ADC.c:411: pwm_left_motor = (sqrtf(0 + powf(vXYScalingFactor*(vRef - v[0]),2.0))/Q3)*100.0;
	push	_main_v_1_125
	push	(_main_v_1_125 + 1)
	push	(_main_v_1_125 + 2)
	push	(_main_v_1_125 + 3)
	mov	dpl,_main_vRef_1_125
	mov	dph,(_main_vRef_1_125 + 1)
	mov	b,(_main_vRef_1_125 + 2)
	mov	a,(_main_vRef_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xD09E
	mov	b,#0xD2
	mov	a,#0x3E
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	lcall	_sqrtf
;	ADC.c:413: Quadrant = 3;
	ljmp	L018034?
L018022?:
;	ADC.c:415: else if(v[1] - 0.2 > vRef && v[0] + 0.2 < vRef) //Quadrant 4 (Bottom Right)
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,(_main_v_1_125 + 0x0004)
	mov	dph,((_main_v_1_125 + 0x0004) + 1)
	mov	b,((_main_v_1_125 + 0x0004) + 2)
	mov	a,((_main_v_1_125 + 0x0004) + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018070?
	ljmp	L018018?
L018070?:
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018071?
	ljmp	L018018?
L018071?:
;	ADC.c:417: pwm_right_motor = (sqrtf(0 + powf(vXYScalingFactor*(vRef - v[0]),2.0))/Q4)*100.0;
	push	_main_v_1_125
	push	(_main_v_1_125 + 1)
	push	(_main_v_1_125 + 2)
	push	(_main_v_1_125 + 3)
	mov	dpl,_main_vRef_1_125
	mov	dph,(_main_vRef_1_125 + 1)
	mov	b,(_main_vRef_1_125 + 2)
	mov	a,(_main_vRef_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xD09E
	mov	b,#0xD2
	mov	a,#0x3E
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	lcall	_sqrtf
;	ADC.c:418: pwm_left_motor = (sqrtf(powf(v[1] - vRef,2.0) + powf(vXYScalingFactor*(vRef - v[0]),2.0))/Q4)*100.0;
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,(_main_v_1_125 + 0x0004)
	mov	dph,((_main_v_1_125 + 0x0004) + 1)
	mov	b,((_main_v_1_125 + 0x0004) + 2)
	mov	a,((_main_v_1_125 + 0x0004) + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	push	_main_v_1_125
	push	(_main_v_1_125 + 1)
	push	(_main_v_1_125 + 2)
	push	(_main_v_1_125 + 3)
	mov	dpl,_main_vRef_1_125
	mov	dph,(_main_vRef_1_125 + 1)
	mov	b,(_main_vRef_1_125 + 2)
	mov	a,(_main_vRef_1_125 + 3)
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	dptr,#0xD09E
	mov	b,#0xD2
	mov	a,#0x3E
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_powf_PARM_2,#0x00
	mov	(_powf_PARM_2 + 1),#0x00
	mov	(_powf_PARM_2 + 2),#0x00
	mov	(_powf_PARM_2 + 3),#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_powf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_sqrtf
;	ADC.c:420: Quadrant = 4;
	ljmp	L018034?
L018018?:
;	ADC.c:422: else if(v[1] - 0.2 > vRef && abs(v[0] - vRef) <= 0.1) //Between Quadrant 1 and 4 on +Vx-Axis
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,(_main_v_1_125 + 0x0004)
	mov	dph,((_main_v_1_125 + 0x0004) + 1)
	mov	b,((_main_v_1_125 + 0x0004) + 2)
	mov	a,((_main_v_1_125 + 0x0004) + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L018014?
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	lcall	_abs
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018073?
	ljmp	L018034?
L018073?:
;	ADC.c:427: Quadrant = 14;
L018014?:
;	ADC.c:429: else if(v[1] + 0.2 < vRef && abs(v[0] - vRef) <= 0.1) //Between Quadrant 2 and 3 on -Vx-Axis
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,(_main_v_1_125 + 0x0004)
	mov	dph,((_main_v_1_125 + 0x0004) + 1)
	mov	b,((_main_v_1_125 + 0x0004) + 2)
	mov	a,((_main_v_1_125 + 0x0004) + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L018010?
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	lcall	_abs
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018075?
	ljmp	L018034?
L018075?:
;	ADC.c:434: Quadrant = 23;
L018010?:
;	ADC.c:436: else if(abs(v[1] - vRef) <= 0.1 && v[0] - 0.2 > vRef) //Between Quadrant 1 and 2 on +Vy-Axis
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,(_main_v_1_125 + 0x0004)
	mov	dph,((_main_v_1_125 + 0x0004) + 1)
	mov	b,((_main_v_1_125 + 0x0004) + 2)
	mov	a,((_main_v_1_125 + 0x0004) + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	lcall	_abs
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018006?
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L018077?
	ljmp	L018034?
L018077?:
;	ADC.c:441: Quadrant = 12;
L018006?:
;	ADC.c:443: else if(abs(v[1] - vRef) <= 0.1 && v[0] + 0.2 < vRef)//Between Quadrant 3 and 4 on -Vy-Axis
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,(_main_v_1_125 + 0x0004)
	mov	dph,((_main_v_1_125 + 0x0004) + 1)
	mov	b,((_main_v_1_125 + 0x0004) + 2)
	mov	a,((_main_v_1_125 + 0x0004) + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	lcall	_abs
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	push	acc
	mov	a,#0x3D
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jnz	L018034?
	mov	a,#0xCD
	push	acc
	mov	a,#0xCC
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,_main_v_1_125
	mov	dph,(_main_v_1_125 + 1)
	mov	b,(_main_v_1_125 + 2)
	mov	a,(_main_v_1_125 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_vRef_1_125
	push	(_main_vRef_1_125 + 1)
	push	(_main_vRef_1_125 + 2)
	push	(_main_vRef_1_125 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	ADC.c:459: pwm_right_motor = 100;
L018034?:
;	ADC.c:470: printf ("VRy@P0.6=%2.2fV, VRx@P0.7=%2.2fV\r\n", v[0], v[1]);
	push	(_main_v_1_125 + 0x0004)
	push	((_main_v_1_125 + 0x0004) + 1)
	push	((_main_v_1_125 + 0x0004) + 2)
	push	((_main_v_1_125 + 0x0004) + 3)
	push	_main_v_1_125
	push	(_main_v_1_125 + 1)
	push	(_main_v_1_125 + 2)
	push	(_main_v_1_125 + 3)
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	ADC.c:471: sendstr1(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_sendstr1
;	ADC.c:472: putchar('.');
	mov	dpl,#0x2E
	lcall	_putchar
;	ADC.c:473: waitms_or_RI1(20);
	mov	dptr,#0x0014
	lcall	_waitms_or_RI1
;	ADC.c:475: if(RXU1())
	lcall	_RXU1
	jc	L018079?
	ljmp	L018040?
L018079?:
;	ADC.c:477: getstr1(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
;	ADC.c:478: printf("RX: %s\r\n Received from STM32", buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_18
	push	acc
	mov	a,#(__str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ljmp	L018040?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 'Command: %s'
	db 0x00
__str_1:
	db 'Response: %s'
	db 0x0D
	db 0x0A
	db 0x00
__str_2:
	db 0x1B
	db '[2J'
	db 0x00
__str_3:
	db 'ADC test program'
	db 0x0A
	db 'File: %s'
	db 0x0A
	db 'Compiled: %s, %s'
	db 0x0A
	db 0x0A
	db 0x00
__str_4:
	db 'ADC.c'
	db 0x00
__str_5:
	db 'Mar 27 2024'
	db 0x00
__str_6:
	db '13:09:49'
	db 0x00
__str_7:
	db 0x0D
	db 0x0A
	db 'JDY-40 test'
	db 0x0D
	db 0x0A
	db 0x00
__str_8:
	db 'AT+DVIDABBA'
	db 0x0D
	db 0x0A
	db 0x00
__str_9:
	db 'AT+VER'
	db 0x0D
	db 0x0A
	db 0x00
__str_10:
	db 'AT+BAUD'
	db 0x0D
	db 0x0A
	db 0x00
__str_11:
	db 'AT+RFID'
	db 0x0D
	db 0x0A
	db 0x00
__str_12:
	db 'AT+DVID'
	db 0x0D
	db 0x0A
	db 0x00
__str_13:
	db 'AT+RFC'
	db 0x0D
	db 0x0A
	db 0x00
__str_14:
	db 'AT+POWE'
	db 0x0D
	db 0x0A
	db 0x00
__str_15:
	db 'AT+CLSS'
	db 0x0D
	db 0x0A
	db 0x00
__str_16:
	db 0x0D
	db 'Press and hold the BOOT button to transmit.'
	db 0x0D
	db 0x0A
	db 0x00
__str_17:
	db 'VRy@P0.6=%2.2fV, VRx@P0.7=%2.2fV'
	db 0x0D
	db 0x0A
	db 0x00
__str_18:
	db 'RX: %s'
	db 0x0D
	db 0x0A
	db ' Received from STM32'
	db 0x00

	CSEG

end
