#line 1 "D:/Documents/ITSON/12vo Semestre/Diseño de Redes Inalambricas/Practicas/Comunicación PC-Microcontrolador/Comunicacion_Micro.c"
char Cadena[10]={'b','y','t'}, x[1], Analog[4];
int i=0,j=1;
unsigned short Timer=0, CT0=2;


void cport() {
 ADCON1=0x0E;
 CMCON=0x07;
 OSCCON=0x77;
 TRISB=0;
 LATB=0x00;
 PORTB=0;
}


void CIntT0(){
 INTCON2.TMR0IP=1;
 T0CON=0x03;
 INTCON.TMR0IE=1;
 INTCON.TMR0IF=0;
 TMR0L=0x2B;
 TMR0H=0xCF;
 CT0=5;
}


void LEDs(){
 if(Cadena[0]=='E' && Cadena[1]=='s' && Cadena[2]=='c'){
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


void Datos_ADC(){
 unsigned Valor;
 Valor = ADC_Read(0);
 IntToStr(Valor, Analog);
 UART1_Write_Text("Ra0+");
 UART1_Write_Text(Analog);
 UART1_Write_Text("+Fin");
 Timer=0;
}


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


void ON_OFF_Timer0(){
 if(T0CON.TMR0ON==1){
 T0CON.TMR0ON=0;
 }
 else{
 T0CON.TMR0ON=1;
 }
 j=0;
}


void Valor_PWM(){
 char x[1];
 int k, PWM;
 x[0]=Cadena[3];
 k=atoi(x);
 PWM=k;
 x[0]=Cadena[4];
 k=atoi(x);
 PWM=PWM*10+k;
 x[0]=Cadena[5];
 k=atoi(x);
 PWM=PWM*10+k;
 PWM1_Set_Duty(PWM);
 j=0;
}


void interrupt(){
 if (RCIF_bit){
 Cadena[i]=UART1_read();
 i++;
 if(Cadena[i-1]=='#'){
 i=0;
 j=1;
 LEDs();
 }
 RCIF_bit=0;
 }

 if(INTCON.TMR0IF){
 CT0--;
 if(CT0==0){
 Timer=1;
 CT0=2;
 }
 TMR0L=0x2B;
 TMR0H=0xCF;
 INTCON.TMR0IF=0;
 }
}


void main() {
 cport();
 CIntT0();
 ADC_Init();

 PWM1_Init(5000);
 PWM1_Start();
 PWM1_Set_Duty(0);

 UART1_Init(9600);
 Delay_ms(50);

 GIE_bit=1;
 PEIE_bit=1;
 RCIE_bit=1;

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
