char Cadena[10]={'b','y','t'}, x[1], Analog[4];
int i=0,j=1;
unsigned short Timer=0, CT0=2;

//---------------------------Configuracion de Puertos---------------------------
void cport() {
  ADCON1=0x0E;
  CMCON=0x07;
  OSCCON=0x77;
  TRISB=0;
  LATB=0x00;
  PORTB=0;
}

//------------------------Configuacion de Timer0 a 100ms------------------------
void CIntT0(){
  INTCON2.TMR0IP=1;
  T0CON=0x03;
  INTCON.TMR0IE=1;
  INTCON.TMR0IF=0;
  TMR0L=0x2B;
  TMR0H=0xCF;
  CT0=5;
}

//---------------Funcion de Encendido/Apagado de LEDs en Puerto B---------------
void LEDs(){
  if(Cadena[0]=='E' && Cadena[1]=='s' && Cadena[2]=='c'){     //Recibe Comando Escx y Enciende/Apaga LED x del Puerto B
    if(Cadena[3]=='0'){
      LATB.b0=~LATB.b0;
    }
    else if(Cadena[3]=='1'){
      LATB.b1=~LATB.b1;
    }
    else if(Cadena[3]=='2'){
      LATB.b2=~LATB.b2;
    }
    else if(Cadena[3]=='3'){
      LATB.b3=~LATB.b3;
    }
    else if(Cadena[3]=='4'){
      LATB.b4=~LATB.b4;
    }
    else if(Cadena[3]=='5'){
      LATB.b5=~LATB.b5;
    }
    else if(Cadena[3]=='6'){
      LATB.b6=~LATB.b6;
    }
    else if(Cadena[3]=='7'){
      LATB.b7=~LATB.b7;
    }
    Cadena[0]='b';
    Cadena[1]='y';
    Cadena[2]='t';
  }
}

//-------------------Lectura de Datos ADC Accionada por Timer-------------------
void Datos_ADC(){                                                               //Con Timer Activo Lee ADC y Envia Resultado Por Puerto Serie
  unsigned Valor;
  Valor = ADC_Read(0);
  IntToStr(Valor, Analog);
  UART1_Write_Text("Ra0+");
  UART1_Write_Text(Analog);
  UART1_Write_Text("+Fin");
  Timer=0;
}

//----------------------Lectura y Envio de Estados de LEDs----------------------
void Estado_LEDs(){

    UART1_Write_Text("byteEnt+b0=");
    IntToStr(PORTB.b0, x);
    UART1_Write_Text(x);

    UART1_Write_Text("+b1=");
    IntToStr(LATB.b1, x);
    UART1_Write_Text(x);

    UART1_Write_Text("+b2=");
    IntToStr(PORTB.b2, x);
    UART1_Write_Text(x);

    UART1_Write_Text("+b3=");
    IntToStr(PORTB.b3, x);
    UART1_Write_Text(x);

    UART1_Write_Text("+b4=");
    IntToStr(PORTB.b4, x);
    UART1_Write_Text(x);

    UART1_Write_Text("+b5=");
    IntToStr(PORTB.b5, x);
    UART1_Write_Text(x);

    UART1_Write_Text("+b6=");
    IntToStr(PORTB.b6, x);
    UART1_Write_Text(x);

    UART1_Write_Text("+b7=");
    IntToStr(PORTB.b7, x);
    UART1_Write_Text(x);

    UART1_Write_Text("+Fin");
    j=0;

}

//------------Activacion/Desactivacion de Timer0 Para su Graficacion------------
void ON_OFF_Timer0(){                                                              //Recibe Comando Ra0 y activa/desactiva Timer0
  if(T0CON.TMR0ON==1){
    T0CON.TMR0ON=0;   //Apaga Timer0
  }
  else{
    T0CON.TMR0ON=1;   //Enciende Timer0
  }
  j=0;
}

//--------------------Lectura y Modulacion de Ancho de Pulso--------------------
void Valor_PWM(){
    char x[1];
    int k, PWM;
    x[0]=Cadena[3];           //Lee Dato Numerico de Cadena
    k=atoi(x);                //Transforma char a Numero Entero
    PWM=k;                    //Guarda Dato En Variable PWM
    x[0]=Cadena[4];           //Lee Siguinete Dato Numerico de Cadena
    k=atoi(x);                //Transforma char a Numero Entero
    PWM=PWM*10+k;             //Multiplica Valor Anterios x10 y Suma Nuevo Valor
    x[0]=Cadena[5];
    k=atoi(x);
    PWM=PWM*10+k;
    PWM1_Set_Duty(PWM);       //Declara Cliclo de trabajo a PWM
    j=0;
}

//--------------------------Función de Interrupciones---------------------------
void interrupt(){
  if (RCIF_bit){                    //Verifica Si Existe Interrupcion en Puerto Serial
     Cadena[i]=UART1_read();        //Lee un Dato Dato de Puerto Seria y Guarda en Posicion i
     i++;                           //Aumenta Poscion de la Cadena
     if(Cadena[i-1]=='#'){          //Verifica si se Recibio el Indicador de Final de Mensaje
       i=0;                         //Reincia Contador i
       j=1;
       LEDs();
     }
     RCIF_bit=0;                    //Apaga la Bandera de Interrupcion por Puerto Serie
  }
  
  if(INTCON.TMR0IF){                //Verifica Si Existe Interrupcion en Timer0
    CT0--;
    if(CT0==0){
      Timer=1;
      CT0=2;
    }
    TMR0L=0x2B;
    TMR0H=0xCF;
    INTCON.TMR0IF=0;                //Apaga la Bander de Interrupcion por Timer0
  }
}

//------------------------------Funcion Principal-------------------------------
void main() {
     cport();                           //Configuracion de PIC y sus Puertos
     CIntT0();                          //Configura Interrupcion por Timer0
     ADC_Init();                        //Inicia ADC
     
     PWM1_Init(5000);                   //Incia PWM1 a Frecuencia de 5000Hz
     PWM1_Start();                      //Enciende PWM1
     PWM1_Set_Duty(0);                  //Declara Ciclo de Trabajo de PWM1 en 0
     
     UART1_Init(9600);                  //Inicializa Puerto Serial a 9600Baudios
     Delay_ms(50);
     
     GIE_bit=1;                         //Activa Interrupciones Globales
     PEIE_bit=1;                        //Habilira Interrupciones Perifericas
     RCIE_bit=1;                        //Activa Interrupcion por Puerto Serial
     
     while(1){
       if(Cadena[0]=='R' && Cadena[1]=='a' && Cadena[2]=='0' && j==1){
         ON_OFF_Timer0();
       }
       else if(Cadena[0]=='b' && Cadena[1]=='y' && Cadena[2]=='t' && j==1){
         Estado_LEDs();
       }
       else if(Cadena[0]=='P' && Cadena[1]=='W' && Cadena[2]=='M' && j==1){
         Valor_PWM();
       }
       if(Timer==1){
         Datos_ADC();
       }
     }
}