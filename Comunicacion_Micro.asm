
_cport:

;Comunicacion_Micro.c,6 :: 		void cport() {
;Comunicacion_Micro.c,7 :: 		ADCON1=0x0E;
	MOVLW       14
	MOVWF       ADCON1+0 
;Comunicacion_Micro.c,8 :: 		CMCON=0x07;
	MOVLW       7
	MOVWF       CMCON+0 
;Comunicacion_Micro.c,9 :: 		OSCCON=0x77;
	MOVLW       119
	MOVWF       OSCCON+0 
;Comunicacion_Micro.c,10 :: 		TRISB=0;
	CLRF        TRISB+0 
;Comunicacion_Micro.c,11 :: 		LATB=0x00;
	CLRF        LATB+0 
;Comunicacion_Micro.c,12 :: 		PORTB=0;
	CLRF        PORTB+0 
;Comunicacion_Micro.c,13 :: 		}
L_end_cport:
	RETURN      0
; end of _cport

_CIntT0:

;Comunicacion_Micro.c,16 :: 		void CIntT0(){
;Comunicacion_Micro.c,17 :: 		INTCON2.TMR0IP=1;
	BSF         INTCON2+0, 2 
;Comunicacion_Micro.c,18 :: 		T0CON=0x03;
	MOVLW       3
	MOVWF       T0CON+0 
;Comunicacion_Micro.c,19 :: 		INTCON.TMR0IE=1;
	BSF         INTCON+0, 5 
;Comunicacion_Micro.c,20 :: 		INTCON.TMR0IF=0;
	BCF         INTCON+0, 2 
;Comunicacion_Micro.c,21 :: 		TMR0L=0x2B;
	MOVLW       43
	MOVWF       TMR0L+0 
;Comunicacion_Micro.c,22 :: 		TMR0H=0xCF;
	MOVLW       207
	MOVWF       TMR0H+0 
;Comunicacion_Micro.c,23 :: 		CT0=5;
	MOVLW       5
	MOVWF       _CT0+0 
;Comunicacion_Micro.c,24 :: 		}
L_end_CIntT0:
	RETURN      0
; end of _CIntT0

_LEDs:

;Comunicacion_Micro.c,27 :: 		void LEDs(){
;Comunicacion_Micro.c,28 :: 		if(Cadena[0]=='E' && Cadena[1]=='s' && Cadena[2]=='c'){     //Recibe Comando Escx y Enciende/Apaga LED x del Puerto B
	MOVF        _Cadena+0, 0 
	XORLW       69
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs2
	MOVF        _Cadena+1, 0 
	XORLW       115
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs2
	MOVF        _Cadena+2, 0 
	XORLW       99
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs2
L__LEDs39:
;Comunicacion_Micro.c,29 :: 		if(Cadena[3]=='0'){
	MOVF        _Cadena+3, 0 
	XORLW       48
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs3
;Comunicacion_Micro.c,30 :: 		LATB.b0=~LATB.b0;
	BTG         LATB+0, 0 
;Comunicacion_Micro.c,31 :: 		}
	GOTO        L_LEDs4
L_LEDs3:
;Comunicacion_Micro.c,32 :: 		else if(Cadena[3]=='1'){
	MOVF        _Cadena+3, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs5
;Comunicacion_Micro.c,33 :: 		LATB.b1=~LATB.b1;
	BTG         LATB+0, 1 
;Comunicacion_Micro.c,34 :: 		}
	GOTO        L_LEDs6
L_LEDs5:
;Comunicacion_Micro.c,35 :: 		else if(Cadena[3]=='2'){
	MOVF        _Cadena+3, 0 
	XORLW       50
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs7
;Comunicacion_Micro.c,36 :: 		LATB.b2=~LATB.b2;
	BTG         LATB+0, 2 
;Comunicacion_Micro.c,37 :: 		}
	GOTO        L_LEDs8
L_LEDs7:
;Comunicacion_Micro.c,38 :: 		else if(Cadena[3]=='3'){
	MOVF        _Cadena+3, 0 
	XORLW       51
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs9
;Comunicacion_Micro.c,39 :: 		LATB.b3=~LATB.b3;
	BTG         LATB+0, 3 
;Comunicacion_Micro.c,40 :: 		}
	GOTO        L_LEDs10
L_LEDs9:
;Comunicacion_Micro.c,41 :: 		else if(Cadena[3]=='4'){
	MOVF        _Cadena+3, 0 
	XORLW       52
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs11
;Comunicacion_Micro.c,42 :: 		LATB.b4=~LATB.b4;
	BTG         LATB+0, 4 
;Comunicacion_Micro.c,43 :: 		}
	GOTO        L_LEDs12
L_LEDs11:
;Comunicacion_Micro.c,44 :: 		else if(Cadena[3]=='5'){
	MOVF        _Cadena+3, 0 
	XORLW       53
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs13
;Comunicacion_Micro.c,45 :: 		LATB.b5=~LATB.b5;
	BTG         LATB+0, 5 
;Comunicacion_Micro.c,46 :: 		}
	GOTO        L_LEDs14
L_LEDs13:
;Comunicacion_Micro.c,47 :: 		else if(Cadena[3]=='6'){
	MOVF        _Cadena+3, 0 
	XORLW       54
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs15
;Comunicacion_Micro.c,48 :: 		LATB.b6=~LATB.b6;
	BTG         LATB+0, 6 
;Comunicacion_Micro.c,49 :: 		}
	GOTO        L_LEDs16
L_LEDs15:
;Comunicacion_Micro.c,50 :: 		else if(Cadena[3]=='7'){
	MOVF        _Cadena+3, 0 
	XORLW       55
	BTFSS       STATUS+0, 2 
	GOTO        L_LEDs17
;Comunicacion_Micro.c,51 :: 		LATB.b7=~LATB.b7;
	BTG         LATB+0, 7 
;Comunicacion_Micro.c,52 :: 		}
L_LEDs17:
L_LEDs16:
L_LEDs14:
L_LEDs12:
L_LEDs10:
L_LEDs8:
L_LEDs6:
L_LEDs4:
;Comunicacion_Micro.c,53 :: 		Cadena[0]='b';
	MOVLW       98
	MOVWF       _Cadena+0 
;Comunicacion_Micro.c,54 :: 		Cadena[1]='y';
	MOVLW       121
	MOVWF       _Cadena+1 
;Comunicacion_Micro.c,55 :: 		Cadena[2]='t';
	MOVLW       116
	MOVWF       _Cadena+2 
;Comunicacion_Micro.c,56 :: 		}
L_LEDs2:
;Comunicacion_Micro.c,57 :: 		}
L_end_LEDs:
	RETURN      0
; end of _LEDs

_Datos_ADC:

;Comunicacion_Micro.c,60 :: 		void Datos_ADC(){                                                               //Con Timer Activo Lee ADC y Envia Resultado Por Puerto Serie
;Comunicacion_Micro.c,62 :: 		Valor = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
;Comunicacion_Micro.c,63 :: 		IntToStr(Valor, Analog);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _Analog+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_Analog+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Comunicacion_Micro.c,64 :: 		UART1_Write_Text("Ra0+");
	MOVLW       ?lstr1_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr1_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,65 :: 		UART1_Write_Text(Analog);
	MOVLW       _Analog+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_Analog+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,66 :: 		UART1_Write_Text("+Fin");
	MOVLW       ?lstr2_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr2_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,67 :: 		Timer=0;
	CLRF        _Timer+0 
;Comunicacion_Micro.c,68 :: 		}
L_end_Datos_ADC:
	RETURN      0
; end of _Datos_ADC

_Estado_LEDs:

;Comunicacion_Micro.c,71 :: 		void Estado_LEDs(){
;Comunicacion_Micro.c,73 :: 		UART1_Write_Text("byteEnt+b0=");
	MOVLW       ?lstr3_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr3_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,74 :: 		IntToStr(PORTB.b0, x);
	MOVLW       0
	BTFSC       PORTB+0, 0 
	MOVLW       1
	MOVWF       FARG_IntToStr_input+0 
	CLRF        FARG_IntToStr_input+1 
	MOVLW       _x+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Comunicacion_Micro.c,75 :: 		UART1_Write_Text(x);
	MOVLW       _x+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,77 :: 		UART1_Write_Text("+b1=");
	MOVLW       ?lstr4_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr4_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,78 :: 		IntToStr(LATB.b1, x);
	MOVLW       0
	BTFSC       LATB+0, 1 
	MOVLW       1
	MOVWF       FARG_IntToStr_input+0 
	CLRF        FARG_IntToStr_input+1 
	MOVLW       _x+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Comunicacion_Micro.c,79 :: 		UART1_Write_Text(x);
	MOVLW       _x+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,81 :: 		UART1_Write_Text("+b2=");
	MOVLW       ?lstr5_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr5_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,82 :: 		IntToStr(PORTB.b2, x);
	MOVLW       0
	BTFSC       PORTB+0, 2 
	MOVLW       1
	MOVWF       FARG_IntToStr_input+0 
	CLRF        FARG_IntToStr_input+1 
	MOVLW       _x+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Comunicacion_Micro.c,83 :: 		UART1_Write_Text(x);
	MOVLW       _x+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,85 :: 		UART1_Write_Text("+b3=");
	MOVLW       ?lstr6_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr6_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,86 :: 		IntToStr(PORTB.b3, x);
	MOVLW       0
	BTFSC       PORTB+0, 3 
	MOVLW       1
	MOVWF       FARG_IntToStr_input+0 
	CLRF        FARG_IntToStr_input+1 
	MOVLW       _x+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Comunicacion_Micro.c,87 :: 		UART1_Write_Text(x);
	MOVLW       _x+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,89 :: 		UART1_Write_Text("+b4=");
	MOVLW       ?lstr7_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr7_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,90 :: 		IntToStr(PORTB.b4, x);
	MOVLW       0
	BTFSC       PORTB+0, 4 
	MOVLW       1
	MOVWF       FARG_IntToStr_input+0 
	CLRF        FARG_IntToStr_input+1 
	MOVLW       _x+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Comunicacion_Micro.c,91 :: 		UART1_Write_Text(x);
	MOVLW       _x+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,93 :: 		UART1_Write_Text("+b5=");
	MOVLW       ?lstr8_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr8_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,94 :: 		IntToStr(PORTB.b5, x);
	MOVLW       0
	BTFSC       PORTB+0, 5 
	MOVLW       1
	MOVWF       FARG_IntToStr_input+0 
	CLRF        FARG_IntToStr_input+1 
	MOVLW       _x+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Comunicacion_Micro.c,95 :: 		UART1_Write_Text(x);
	MOVLW       _x+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,97 :: 		UART1_Write_Text("+b6=");
	MOVLW       ?lstr9_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr9_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,98 :: 		IntToStr(PORTB.b6, x);
	MOVLW       0
	BTFSC       PORTB+0, 6 
	MOVLW       1
	MOVWF       FARG_IntToStr_input+0 
	CLRF        FARG_IntToStr_input+1 
	MOVLW       _x+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Comunicacion_Micro.c,99 :: 		UART1_Write_Text(x);
	MOVLW       _x+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,101 :: 		UART1_Write_Text("+b7=");
	MOVLW       ?lstr10_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr10_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,102 :: 		IntToStr(PORTB.b7, x);
	MOVLW       0
	BTFSC       PORTB+0, 7 
	MOVLW       1
	MOVWF       FARG_IntToStr_input+0 
	CLRF        FARG_IntToStr_input+1 
	MOVLW       _x+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Comunicacion_Micro.c,103 :: 		UART1_Write_Text(x);
	MOVLW       _x+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_x+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,105 :: 		UART1_Write_Text("+Fin");
	MOVLW       ?lstr11_Comunicacion_Micro+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr11_Comunicacion_Micro+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Comunicacion_Micro.c,106 :: 		j=0;
	CLRF        _j+0 
	CLRF        _j+1 
;Comunicacion_Micro.c,108 :: 		}
L_end_Estado_LEDs:
	RETURN      0
; end of _Estado_LEDs

_ON_OFF_Timer0:

;Comunicacion_Micro.c,111 :: 		void ON_OFF_Timer0(){                                                              //Recibe Comando Ra0 y activa/desactiva Timer0
;Comunicacion_Micro.c,112 :: 		if(T0CON.TMR0ON==1){
	BTFSS       T0CON+0, 7 
	GOTO        L_ON_OFF_Timer018
;Comunicacion_Micro.c,113 :: 		T0CON.TMR0ON=0;   //Apaga Timer0
	BCF         T0CON+0, 7 
;Comunicacion_Micro.c,114 :: 		}
	GOTO        L_ON_OFF_Timer019
L_ON_OFF_Timer018:
;Comunicacion_Micro.c,116 :: 		T0CON.TMR0ON=1;   //Enciende Timer0
	BSF         T0CON+0, 7 
;Comunicacion_Micro.c,117 :: 		}
L_ON_OFF_Timer019:
;Comunicacion_Micro.c,118 :: 		j=0;
	CLRF        _j+0 
	CLRF        _j+1 
;Comunicacion_Micro.c,119 :: 		}
L_end_ON_OFF_Timer0:
	RETURN      0
; end of _ON_OFF_Timer0

_Valor_PWM:

;Comunicacion_Micro.c,122 :: 		void Valor_PWM(){
;Comunicacion_Micro.c,125 :: 		x[0]=Cadena[3];           //Lee Dato Numerico de Cadena
	MOVF        _Cadena+3, 0 
	MOVWF       Valor_PWM_x_L0+0 
;Comunicacion_Micro.c,126 :: 		k=atoi(x);                //Transforma char a Numero Entero
	MOVLW       Valor_PWM_x_L0+0
	MOVWF       FARG_atoi_s+0 
	MOVLW       hi_addr(Valor_PWM_x_L0+0)
	MOVWF       FARG_atoi_s+1 
	CALL        _atoi+0, 0
;Comunicacion_Micro.c,127 :: 		PWM=k;                    //Guarda Dato En Variable PWM
	MOVF        R0, 0 
	MOVWF       Valor_PWM_PWM_L0+0 
	MOVF        R1, 0 
	MOVWF       Valor_PWM_PWM_L0+1 
;Comunicacion_Micro.c,128 :: 		x[0]=Cadena[4];           //Lee Siguinete Dato Numerico de Cadena
	MOVF        _Cadena+4, 0 
	MOVWF       Valor_PWM_x_L0+0 
;Comunicacion_Micro.c,129 :: 		k=atoi(x);                //Transforma char a Numero Entero
	MOVLW       Valor_PWM_x_L0+0
	MOVWF       FARG_atoi_s+0 
	MOVLW       hi_addr(Valor_PWM_x_L0+0)
	MOVWF       FARG_atoi_s+1 
	CALL        _atoi+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__Valor_PWM+0 
	MOVF        R1, 0 
	MOVWF       FLOC__Valor_PWM+1 
	MOVF        Valor_PWM_PWM_L0+0, 0 
	MOVWF       R0 
	MOVF        Valor_PWM_PWM_L0+1, 0 
	MOVWF       R1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
;Comunicacion_Micro.c,130 :: 		PWM=PWM*10+k;             //Multiplica Valor Anterios x10 y Suma Nuevo Valor
	MOVF        FLOC__Valor_PWM+0, 0 
	ADDWF       R0, 0 
	MOVWF       Valor_PWM_PWM_L0+0 
	MOVF        FLOC__Valor_PWM+1, 0 
	ADDWFC      R1, 0 
	MOVWF       Valor_PWM_PWM_L0+1 
;Comunicacion_Micro.c,131 :: 		x[0]=Cadena[5];
	MOVF        _Cadena+5, 0 
	MOVWF       Valor_PWM_x_L0+0 
;Comunicacion_Micro.c,132 :: 		k=atoi(x);
	MOVLW       Valor_PWM_x_L0+0
	MOVWF       FARG_atoi_s+0 
	MOVLW       hi_addr(Valor_PWM_x_L0+0)
	MOVWF       FARG_atoi_s+1 
	CALL        _atoi+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__Valor_PWM+0 
	MOVF        R1, 0 
	MOVWF       FLOC__Valor_PWM+1 
	MOVF        Valor_PWM_PWM_L0+0, 0 
	MOVWF       R0 
	MOVF        Valor_PWM_PWM_L0+1, 0 
	MOVWF       R1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
;Comunicacion_Micro.c,133 :: 		PWM=PWM*10+k;
	MOVF        FLOC__Valor_PWM+0, 0 
	ADDWF       R0, 1 
	MOVF        FLOC__Valor_PWM+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       Valor_PWM_PWM_L0+0 
	MOVF        R1, 0 
	MOVWF       Valor_PWM_PWM_L0+1 
;Comunicacion_Micro.c,134 :: 		PWM1_Set_Duty(PWM);       //Declara Cliclo de trabajo a PWM
	MOVF        R0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;Comunicacion_Micro.c,135 :: 		j=0;
	CLRF        _j+0 
	CLRF        _j+1 
;Comunicacion_Micro.c,136 :: 		}
L_end_Valor_PWM:
	RETURN      0
; end of _Valor_PWM

_interrupt:

;Comunicacion_Micro.c,139 :: 		void interrupt(){
;Comunicacion_Micro.c,140 :: 		if (RCIF_bit){                    //Verifica Si Existe Interrupcion en Puerto Serial
	BTFSS       RCIF_bit+0, BitPos(RCIF_bit+0) 
	GOTO        L_interrupt20
;Comunicacion_Micro.c,141 :: 		Cadena[i]=UART1_read();        //Lee un Dato Dato de Puerto Seria y Guarda en Posicion i
	MOVLW       _Cadena+0
	ADDWF       _i+0, 0 
	MOVWF       FLOC__interrupt+0 
	MOVLW       hi_addr(_Cadena+0)
	ADDWFC      _i+1, 0 
	MOVWF       FLOC__interrupt+1 
	CALL        _UART1_Read+0, 0
	MOVFF       FLOC__interrupt+0, FSR1
	MOVFF       FLOC__interrupt+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;Comunicacion_Micro.c,142 :: 		i++;                           //Aumenta Poscion de la Cadena
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Comunicacion_Micro.c,143 :: 		if(Cadena[i-1]=='#'){          //Verifica si se Recibio el Indicador de Final de Mensaje
	MOVLW       1
	SUBWF       _i+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _i+1, 0 
	MOVWF       R1 
	MOVLW       _Cadena+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(_Cadena+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	XORLW       35
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt21
;Comunicacion_Micro.c,144 :: 		i=0;                         //Reincia Contador i
	CLRF        _i+0 
	CLRF        _i+1 
;Comunicacion_Micro.c,145 :: 		j=1;
	MOVLW       1
	MOVWF       _j+0 
	MOVLW       0
	MOVWF       _j+1 
;Comunicacion_Micro.c,146 :: 		LEDs();
	CALL        _LEDs+0, 0
;Comunicacion_Micro.c,147 :: 		}
L_interrupt21:
;Comunicacion_Micro.c,148 :: 		RCIF_bit=0;                    //Apaga la Bandera de Interrupcion por Puerto Serie
	BCF         RCIF_bit+0, BitPos(RCIF_bit+0) 
;Comunicacion_Micro.c,149 :: 		}
L_interrupt20:
;Comunicacion_Micro.c,151 :: 		if(INTCON.TMR0IF){                //Verifica Si Existe Interrupcion en Timer0
	BTFSS       INTCON+0, 2 
	GOTO        L_interrupt22
;Comunicacion_Micro.c,152 :: 		CT0--;
	DECF        _CT0+0, 1 
;Comunicacion_Micro.c,153 :: 		if(CT0==0){
	MOVF        _CT0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt23
;Comunicacion_Micro.c,154 :: 		Timer=1;
	MOVLW       1
	MOVWF       _Timer+0 
;Comunicacion_Micro.c,155 :: 		CT0=2;
	MOVLW       2
	MOVWF       _CT0+0 
;Comunicacion_Micro.c,156 :: 		}
L_interrupt23:
;Comunicacion_Micro.c,157 :: 		TMR0L=0x2B;
	MOVLW       43
	MOVWF       TMR0L+0 
;Comunicacion_Micro.c,158 :: 		TMR0H=0xCF;
	MOVLW       207
	MOVWF       TMR0H+0 
;Comunicacion_Micro.c,159 :: 		INTCON.TMR0IF=0;                //Apaga la Bander de Interrupcion por Timer0
	BCF         INTCON+0, 2 
;Comunicacion_Micro.c,160 :: 		}
L_interrupt22:
;Comunicacion_Micro.c,161 :: 		}
L_end_interrupt:
L__interrupt51:
	RETFIE      1
; end of _interrupt

_main:

;Comunicacion_Micro.c,164 :: 		void main() {
;Comunicacion_Micro.c,165 :: 		cport();                           //Configuracion de PIC y sus Puertos
	CALL        _cport+0, 0
;Comunicacion_Micro.c,166 :: 		CIntT0();                          //Configura Interrupcion por Timer0
	CALL        _CIntT0+0, 0
;Comunicacion_Micro.c,167 :: 		ADC_Init();                        //Inicia ADC
	CALL        _ADC_Init+0, 0
;Comunicacion_Micro.c,169 :: 		PWM1_Init(5000);                   //Incia PWM1 a Frecuencia de 5000Hz
	BSF         T2CON+0, 0, 0
	BCF         T2CON+0, 1, 0
	MOVLW       99
	MOVWF       PR2+0, 0
	CALL        _PWM1_Init+0, 0
;Comunicacion_Micro.c,170 :: 		PWM1_Start();                      //Enciende PWM1
	CALL        _PWM1_Start+0, 0
;Comunicacion_Micro.c,171 :: 		PWM1_Set_Duty(0);                  //Declara Ciclo de Trabajo de PWM1 en 0
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;Comunicacion_Micro.c,173 :: 		UART1_Init(9600);                  //Inicializa Puerto Serial a 9600Baudios
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;Comunicacion_Micro.c,174 :: 		Delay_ms(50);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main24:
	DECFSZ      R13, 1, 1
	BRA         L_main24
	DECFSZ      R12, 1, 1
	BRA         L_main24
	NOP
	NOP
;Comunicacion_Micro.c,176 :: 		GIE_bit=1;                         //Activa Interrupciones Globales
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;Comunicacion_Micro.c,177 :: 		PEIE_bit=1;                        //Habilira Interrupciones Perifericas
	BSF         PEIE_bit+0, BitPos(PEIE_bit+0) 
;Comunicacion_Micro.c,178 :: 		RCIE_bit=1;                        //Activa Interrupcion por Puerto Serial
	BSF         RCIE_bit+0, BitPos(RCIE_bit+0) 
;Comunicacion_Micro.c,180 :: 		while(1){
L_main25:
;Comunicacion_Micro.c,181 :: 		if(Cadena[0]=='R' && Cadena[1]=='a' && Cadena[2]=='0' && j==1){
	MOVF        _Cadena+0, 0 
	XORLW       82
	BTFSS       STATUS+0, 2 
	GOTO        L_main29
	MOVF        _Cadena+1, 0 
	XORLW       97
	BTFSS       STATUS+0, 2 
	GOTO        L_main29
	MOVF        _Cadena+2, 0 
	XORLW       48
	BTFSS       STATUS+0, 2 
	GOTO        L_main29
	MOVLW       0
	XORWF       _j+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main53
	MOVLW       1
	XORWF       _j+0, 0 
L__main53:
	BTFSS       STATUS+0, 2 
	GOTO        L_main29
L__main42:
;Comunicacion_Micro.c,182 :: 		ON_OFF_Timer0();
	CALL        _ON_OFF_Timer0+0, 0
;Comunicacion_Micro.c,183 :: 		}
	GOTO        L_main30
L_main29:
;Comunicacion_Micro.c,184 :: 		else if(Cadena[0]=='b' && Cadena[1]=='y' && Cadena[2]=='t' && j==1){
	MOVF        _Cadena+0, 0 
	XORLW       98
	BTFSS       STATUS+0, 2 
	GOTO        L_main33
	MOVF        _Cadena+1, 0 
	XORLW       121
	BTFSS       STATUS+0, 2 
	GOTO        L_main33
	MOVF        _Cadena+2, 0 
	XORLW       116
	BTFSS       STATUS+0, 2 
	GOTO        L_main33
	MOVLW       0
	XORWF       _j+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main54
	MOVLW       1
	XORWF       _j+0, 0 
L__main54:
	BTFSS       STATUS+0, 2 
	GOTO        L_main33
L__main41:
;Comunicacion_Micro.c,185 :: 		Estado_LEDs();
	CALL        _Estado_LEDs+0, 0
;Comunicacion_Micro.c,186 :: 		}
	GOTO        L_main34
L_main33:
;Comunicacion_Micro.c,187 :: 		else if(Cadena[0]=='P' && Cadena[1]=='W' && Cadena[2]=='M' && j==1){
	MOVF        _Cadena+0, 0 
	XORLW       80
	BTFSS       STATUS+0, 2 
	GOTO        L_main37
	MOVF        _Cadena+1, 0 
	XORLW       87
	BTFSS       STATUS+0, 2 
	GOTO        L_main37
	MOVF        _Cadena+2, 0 
	XORLW       77
	BTFSS       STATUS+0, 2 
	GOTO        L_main37
	MOVLW       0
	XORWF       _j+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main55
	MOVLW       1
	XORWF       _j+0, 0 
L__main55:
	BTFSS       STATUS+0, 2 
	GOTO        L_main37
L__main40:
;Comunicacion_Micro.c,188 :: 		Valor_PWM();
	CALL        _Valor_PWM+0, 0
;Comunicacion_Micro.c,189 :: 		}
L_main37:
L_main34:
L_main30:
;Comunicacion_Micro.c,190 :: 		if(Timer==1){
	MOVF        _Timer+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main38
;Comunicacion_Micro.c,191 :: 		Datos_ADC();
	CALL        _Datos_ADC+0, 0
;Comunicacion_Micro.c,192 :: 		}
L_main38:
;Comunicacion_Micro.c,193 :: 		}
	GOTO        L_main25
;Comunicacion_Micro.c,194 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
