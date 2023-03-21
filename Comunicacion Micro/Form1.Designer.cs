namespace Comunicacion_Micro
{
    partial class frmTarjeta
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.btnRecibeAn0 = new System.Windows.Forms.Button();
            this.btnRecibeDatDig = new System.Windows.Forms.Button();
            this.btnMandaByte = new System.Windows.Forms.Button();
            this.lblCanalAn0 = new System.Windows.Forms.Label();
            this.numStepByte = new System.Windows.Forms.NumericUpDown();
            this.chkPuertoSerie = new System.Windows.Forms.CheckBox();
            this.serialPort = new System.IO.Ports.SerialPort(this.components);
            this.LED1 = new System.Windows.Forms.Button();
            this.Grafico = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.LED2 = new System.Windows.Forms.Button();
            this.LED0 = new System.Windows.Forms.Button();
            this.LED6 = new System.Windows.Forms.Button();
            this.LED4 = new System.Windows.Forms.Button();
            this.LED3 = new System.Windows.Forms.Button();
            this.LED7 = new System.Windows.Forms.Button();
            this.LED5 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.numStepByte)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Grafico)).BeginInit();
            this.SuspendLayout();
            // 
            // btnRecibeAn0
            // 
            this.btnRecibeAn0.Enabled = false;
            this.btnRecibeAn0.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRecibeAn0.Location = new System.Drawing.Point(150, 10);
            this.btnRecibeAn0.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnRecibeAn0.Name = "btnRecibeAn0";
            this.btnRecibeAn0.Size = new System.Drawing.Size(155, 60);
            this.btnRecibeAn0.TabIndex = 1;
            this.btnRecibeAn0.Text = "Graficar Señal Analogica";
            this.btnRecibeAn0.UseVisualStyleBackColor = true;
            this.btnRecibeAn0.Click += new System.EventHandler(this.btnRecibeAn0_Click);
            // 
            // btnRecibeDatDig
            // 
            this.btnRecibeDatDig.Enabled = false;
            this.btnRecibeDatDig.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRecibeDatDig.Location = new System.Drawing.Point(429, 104);
            this.btnRecibeDatDig.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnRecibeDatDig.Name = "btnRecibeDatDig";
            this.btnRecibeDatDig.Size = new System.Drawing.Size(116, 71);
            this.btnRecibeDatDig.TabIndex = 2;
            this.btnRecibeDatDig.Text = "Recibe datos digitales";
            this.btnRecibeDatDig.UseVisualStyleBackColor = true;
            this.btnRecibeDatDig.Click += new System.EventHandler(this.btnRecibeDatDig_Click);
            // 
            // btnMandaByte
            // 
            this.btnMandaByte.Enabled = false;
            this.btnMandaByte.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMandaByte.Location = new System.Drawing.Point(10, 270);
            this.btnMandaByte.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnMandaByte.Name = "btnMandaByte";
            this.btnMandaByte.Size = new System.Drawing.Size(130, 53);
            this.btnMandaByte.TabIndex = 3;
            this.btnMandaByte.Text = "PWM";
            this.btnMandaByte.UseVisualStyleBackColor = true;
            this.btnMandaByte.Click += new System.EventHandler(this.btnMandaByte_Click);
            // 
            // lblCanalAn0
            // 
            this.lblCanalAn0.AutoSize = true;
            this.lblCanalAn0.BackColor = System.Drawing.Color.Transparent;
            this.lblCanalAn0.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCanalAn0.Location = new System.Drawing.Point(919, 52);
            this.lblCanalAn0.Name = "lblCanalAn0";
            this.lblCanalAn0.Size = new System.Drawing.Size(44, 18);
            this.lblCanalAn0.TabIndex = 4;
            this.lblCanalAn0.Text = "RA0:";
            // 
            // numStepByte
            // 
            this.numStepByte.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numStepByte.Location = new System.Drawing.Point(150, 270);
            this.numStepByte.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.numStepByte.Maximum = new decimal(new int[] {
            255,
            0,
            0,
            0});
            this.numStepByte.Name = "numStepByte";
            this.numStepByte.Size = new System.Drawing.Size(155, 53);
            this.numStepByte.TabIndex = 6;
            // 
            // chkPuertoSerie
            // 
            this.chkPuertoSerie.AutoSize = true;
            this.chkPuertoSerie.BackColor = System.Drawing.Color.Red;
            this.chkPuertoSerie.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkPuertoSerie.ForeColor = System.Drawing.SystemColors.ControlText;
            this.chkPuertoSerie.Location = new System.Drawing.Point(10, 359);
            this.chkPuertoSerie.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.chkPuertoSerie.Name = "chkPuertoSerie";
            this.chkPuertoSerie.Size = new System.Drawing.Size(293, 40);
            this.chkPuertoSerie.TabIndex = 7;
            this.chkPuertoSerie.Text = "Abrir Puerto Serie";
            this.chkPuertoSerie.UseVisualStyleBackColor = false;
            this.chkPuertoSerie.CheckedChanged += new System.EventHandler(this.chkPuertoSerie_CheckedChanged);
            // 
            // serialPort
            // 
            this.serialPort.PortName = "COM7";
            this.serialPort.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.serialPort_DataReceived);
            // 
            // LED1
            // 
            this.LED1.BackColor = System.Drawing.Color.White;
            this.LED1.Enabled = false;
            this.LED1.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.LED1.FlatAppearance.BorderSize = 0;
            this.LED1.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LED1.Location = new System.Drawing.Point(80, 10);
            this.LED1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.LED1.Name = "LED1";
            this.LED1.Size = new System.Drawing.Size(60, 60);
            this.LED1.TabIndex = 9;
            this.LED1.Text = "LED 1";
            this.LED1.UseVisualStyleBackColor = false;
            this.LED1.Click += new System.EventHandler(this.LED1_Click);
            // 
            // Grafico
            // 
            chartArea1.Name = "ChartArea1";
            this.Grafico.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.Grafico.Legends.Add(legend1);
            this.Grafico.Location = new System.Drawing.Point(315, 10);
            this.Grafico.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Grafico.Name = "Grafico";
            this.Grafico.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Excel;
            series1.BorderWidth = 2;
            series1.ChartArea = "ChartArea1";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Spline;
            series1.Color = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            series1.IsXValueIndexed = true;
            series1.LabelBackColor = System.Drawing.Color.Transparent;
            series1.Legend = "Legend1";
            series1.Name = "RA0";
            series1.XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Double;
            this.Grafico.Series.Add(series1);
            this.Grafico.Size = new System.Drawing.Size(704, 389);
            this.Grafico.TabIndex = 10;
            this.Grafico.Text = "Señal de Sensor";
            // 
            // LED2
            // 
            this.LED2.BackColor = System.Drawing.Color.White;
            this.LED2.Enabled = false;
            this.LED2.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.LED2.FlatAppearance.BorderSize = 0;
            this.LED2.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LED2.Location = new System.Drawing.Point(10, 75);
            this.LED2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.LED2.Name = "LED2";
            this.LED2.Size = new System.Drawing.Size(60, 60);
            this.LED2.TabIndex = 11;
            this.LED2.Text = "LED 2";
            this.LED2.UseVisualStyleBackColor = false;
            this.LED2.Click += new System.EventHandler(this.LED2_Click);
            // 
            // LED0
            // 
            this.LED0.BackColor = System.Drawing.Color.White;
            this.LED0.Enabled = false;
            this.LED0.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.LED0.FlatAppearance.BorderSize = 0;
            this.LED0.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LED0.Location = new System.Drawing.Point(10, 10);
            this.LED0.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.LED0.Name = "LED0";
            this.LED0.Size = new System.Drawing.Size(60, 60);
            this.LED0.TabIndex = 12;
            this.LED0.Text = "LED 0";
            this.LED0.UseVisualStyleBackColor = false;
            this.LED0.Click += new System.EventHandler(this.LED0_Click);
            // 
            // LED6
            // 
            this.LED6.BackColor = System.Drawing.Color.White;
            this.LED6.Enabled = false;
            this.LED6.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.LED6.FlatAppearance.BorderSize = 0;
            this.LED6.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LED6.Location = new System.Drawing.Point(10, 205);
            this.LED6.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.LED6.Name = "LED6";
            this.LED6.Size = new System.Drawing.Size(60, 60);
            this.LED6.TabIndex = 13;
            this.LED6.Text = "LED 6";
            this.LED6.UseVisualStyleBackColor = false;
            this.LED6.Click += new System.EventHandler(this.LED6_Click);
            // 
            // LED4
            // 
            this.LED4.BackColor = System.Drawing.Color.White;
            this.LED4.Enabled = false;
            this.LED4.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.LED4.FlatAppearance.BorderSize = 0;
            this.LED4.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LED4.Location = new System.Drawing.Point(10, 140);
            this.LED4.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.LED4.Name = "LED4";
            this.LED4.Size = new System.Drawing.Size(60, 60);
            this.LED4.TabIndex = 14;
            this.LED4.Text = "LED 4";
            this.LED4.UseVisualStyleBackColor = false;
            this.LED4.Click += new System.EventHandler(this.LED4_Click);
            // 
            // LED3
            // 
            this.LED3.BackColor = System.Drawing.Color.White;
            this.LED3.Enabled = false;
            this.LED3.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.LED3.FlatAppearance.BorderSize = 0;
            this.LED3.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LED3.Location = new System.Drawing.Point(80, 75);
            this.LED3.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.LED3.Name = "LED3";
            this.LED3.Size = new System.Drawing.Size(60, 60);
            this.LED3.TabIndex = 15;
            this.LED3.Text = "LED 3";
            this.LED3.UseVisualStyleBackColor = false;
            this.LED3.Click += new System.EventHandler(this.LED3_Click);
            // 
            // LED7
            // 
            this.LED7.BackColor = System.Drawing.Color.White;
            this.LED7.Enabled = false;
            this.LED7.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.LED7.FlatAppearance.BorderSize = 0;
            this.LED7.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LED7.Location = new System.Drawing.Point(80, 205);
            this.LED7.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.LED7.Name = "LED7";
            this.LED7.Size = new System.Drawing.Size(60, 60);
            this.LED7.TabIndex = 16;
            this.LED7.Text = "LED 7";
            this.LED7.UseVisualStyleBackColor = false;
            this.LED7.Click += new System.EventHandler(this.LED7_Click);
            // 
            // LED5
            // 
            this.LED5.BackColor = System.Drawing.Color.White;
            this.LED5.Enabled = false;
            this.LED5.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.LED5.FlatAppearance.BorderSize = 0;
            this.LED5.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LED5.Location = new System.Drawing.Point(80, 140);
            this.LED5.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.LED5.Name = "LED5";
            this.LED5.Size = new System.Drawing.Size(60, 60);
            this.LED5.TabIndex = 17;
            this.LED5.Text = "LED 5";
            this.LED5.UseVisualStyleBackColor = false;
            this.LED5.Click += new System.EventHandler(this.LED5_Click);
            // 
            // frmTarjeta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1027, 412);
            this.Controls.Add(this.lblCanalAn0);
            this.Controls.Add(this.LED5);
            this.Controls.Add(this.LED7);
            this.Controls.Add(this.LED3);
            this.Controls.Add(this.LED4);
            this.Controls.Add(this.LED6);
            this.Controls.Add(this.LED0);
            this.Controls.Add(this.LED2);
            this.Controls.Add(this.Grafico);
            this.Controls.Add(this.LED1);
            this.Controls.Add(this.chkPuertoSerie);
            this.Controls.Add(this.numStepByte);
            this.Controls.Add(this.btnMandaByte);
            this.Controls.Add(this.btnRecibeDatDig);
            this.Controls.Add(this.btnRecibeAn0);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "frmTarjeta";
            this.Text = "Control de Microcontrolador";
            ((System.ComponentModel.ISupportInitialize)(this.numStepByte)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Grafico)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnRecibeAn0;
        private System.Windows.Forms.Button btnRecibeDatDig;
        private System.Windows.Forms.Button btnMandaByte;
        private System.Windows.Forms.Label lblCanalAn0;
        private System.Windows.Forms.NumericUpDown numStepByte;
        private System.Windows.Forms.CheckBox chkPuertoSerie;
        private System.IO.Ports.SerialPort serialPort;
        private System.Windows.Forms.Button LED1;
        private System.Windows.Forms.DataVisualization.Charting.Chart Grafico;
        private System.Windows.Forms.Button LED2;
        private System.Windows.Forms.Button LED0;
        private System.Windows.Forms.Button LED6;
        private System.Windows.Forms.Button LED4;
        private System.Windows.Forms.Button LED3;
        private System.Windows.Forms.Button LED7;
        private System.Windows.Forms.Button LED5;
    }
}

