using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Comunicacion_Micro
{
    public partial class frmTarjeta : Form
    {
        string datoSerial;
        int[] Lecturas = new int[101];
        public frmTarjeta()
        {
            InitializeComponent();
        }

        private void chkPuertoSerie_CheckedChanged(object sender, EventArgs e)
        {
            if (chkPuertoSerie.Checked){
                for (int i = 0; i <= 100; i++){
                    Lecturas[i] = 0;
                }
                try
                {
                    if (!serialPort.IsOpen)
                    {
                        serialPort.Open();
                    }
                    btnMandaByte.Enabled = true;
                    btnRecibeAn0.Enabled = true;
                    btnRecibeDatDig.Enabled = true;
                    LED0.Enabled = true;
                    LED1.Enabled = true;
                    LED2.Enabled = true;
                    LED3.Enabled = true;
                    LED4.Enabled = true;
                    LED5.Enabled = true;
                    LED6.Enabled = true;
                    LED7.Enabled = true;
                    chkPuertoSerie.Text = "Puerto Abierto";
                    chkPuertoSerie.BackColor = Color.YellowGreen;
                    serialPort.Write("byt#");
                }
                catch{
                    MessageBox.Show("Algo anda mal con el puerto COM");
                }
            }

            else{
                try{
                    if (serialPort.IsOpen){
                        serialPort.Close();
                        chkPuertoSerie.BackColor = Color.Red;
                        chkPuertoSerie.Text = "Puerto Cerrado";
                        btnMandaByte.Enabled = false;
                        btnRecibeAn0.Enabled = false;
                        btnRecibeDatDig.Enabled = false;
                        LED0.Enabled = false;
                        LED1.Enabled = false;
                        LED2.Enabled = false;
                        LED3.Enabled = false;
                        LED4.Enabled = false;
                        LED5.Enabled = false;
                        LED6.Enabled = false;
                        LED7.Enabled = false;
                    }
                }
                catch{
                    MessageBox.Show("Algo anda mal no puedo cerrar el COM");
                }
            }
        }

        private void serialPort_DataReceived(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {
            try{
                serialPort.ReadTimeout = 2000;
                datoSerial = serialPort.ReadTo("+Fin");
                this.Invoke(new EventHandler(analisisCadenas));
            }
            catch{
                MessageBox.Show("Error, no recibi el identifacdor final de la cadena: Fin");
                serialPort.DiscardInBuffer();
            }
        }

        private void analisisCadenas(object sender, EventArgs e) {
            string cad;
            
            if (datoSerial.Contains("Ra0")){
                cad = datoSerial.Replace("Ra0", "");
                cad = cad.Replace(" ", "");
                cad = cad.Replace("+", "");
                lblCanalAn0.Text = "RA0: " + (char)13 + cad;
                Grafico.Series["RA0"].Points.Clear();
                for(int i= 2; i <= 100; i++ ){
                    Lecturas[i-1] = Lecturas[i];
                }
                Lecturas[100] = int.Parse(cad);
                for (int i=1; i<= 100; i++) {
                    Grafico.Series["RA0"].Points.AddXY(i*10, Lecturas[i]);
                }
            }

            if (datoSerial.Contains("byteEnt")) {
                cad = datoSerial.Replace("byteEnt+", "");
                cad = datoSerial.Replace(" ", "");
                string[] arreglocadena = cad.Split('+');
                ControlLEDs(arreglocadena);
            }
        }

        private void ControlLEDs(string[] Cadena)
        {
            if (Cadena[1] == "b0=1")
            {
                this.LED0.BackColor = Color.Yellow;
            }
            else
            {
                this.LED0.BackColor = Color.White;
            }

            if (Cadena[2] == "b1=1")
            {
                this.LED1.BackColor = Color.Yellow;
            }
            else
            {
                this.LED1.BackColor = Color.White;
            }

            if (Cadena[3] == "b2=1")
            {
                this.LED2.BackColor = Color.Yellow;
            }
            else
            {
                this.LED2.BackColor = Color.White;
            }

            if (Cadena[4] == "b3=1")
            {
                this.LED3.BackColor = Color.Yellow;
            }
            else
            {
                this.LED3.BackColor = Color.White;
            }

            if (Cadena[5] == "b4=1")
            {
                this.LED4.BackColor = Color.Yellow;
            }
            else
            {
                this.LED4.BackColor = Color.White;
            }

            if (Cadena[6] == "b5=1")
            {
                this.LED5.BackColor = Color.Yellow;
            }
            else
            {
                this.LED5.BackColor = Color.White;
            }

            if (Cadena[7] == "b6=1")
            {
                this.LED6.BackColor = Color.Yellow;
            }
            else
            {
                this.LED6.BackColor = Color.White;
            }

            if (Cadena[8] == "b7=1")
            {
                this.LED7.BackColor = Color.Yellow;
            }
            else
            {
                this.LED7.BackColor = Color.White;
            }
        }

        private void btnMandaByte_Click(object sender, EventArgs e)
        {
            serialPort.Write("PWM" + numStepByte.Value.ToString("000") + "#");
        }

        private void btnRecibeDatDig_Click(object sender, EventArgs e)
        {
            serialPort.Write("byt#");
        }

        private void btnRecibeAn0_Click(object sender, EventArgs e)
        {
            serialPort.Write("Ra0#");
        }

        private void LED0_Click(object sender, EventArgs e)
        {
            serialPort.Write("Esc0#");
        }

        private void LED1_Click(object sender, EventArgs e)
        {
            serialPort.Write("Esc1#");
        }

        private void LED2_Click(object sender, EventArgs e)
        {
            serialPort.Write("Esc2#");
        }

        private void LED3_Click(object sender, EventArgs e)
        {
            serialPort.Write("Esc3#");
        }

        private void LED4_Click(object sender, EventArgs e)
        {
            serialPort.Write("Esc4#");
        }

        private void LED5_Click(object sender, EventArgs e)
        {
            serialPort.Write("Esc5#");
        }

        private void LED6_Click(object sender, EventArgs e)
        {
            serialPort.Write("Esc6#");
        }

        private void LED7_Click(object sender, EventArgs e)
        {
            serialPort.Write("Esc7#");
        }
    }
}
