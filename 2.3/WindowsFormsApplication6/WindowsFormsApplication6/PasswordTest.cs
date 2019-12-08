using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;
using System.Threading;

namespace WindowsFormsApplication6
{
    public partial class PasswordTest : Form
    {

        double times;
       
        public PasswordTest()
        {
            InitializeComponent();
            timer1.Enabled = true;
            string Pfunction = "";
            if (GlobalData.whichPassword == 0) Pfunction = "Email";
            if (GlobalData.whichPassword == 1) Pfunction = "Shopping";
            if (GlobalData.whichPassword == 2) Pfunction = "Banking";
            function.Text = Pfunction;

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
         
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            times = times + 0.1;
            time.Text =times.ToString();
        }

        // when click on confirm
        private void button1_Click(object sender, EventArgs e)
        {

            //get the input
            String passworde = passwordentered.Text;

            //route to log
            using (System.IO.StreamWriter file =
                      new System.IO.StreamWriter(@" C: \Users\miclo\Documents\test result\log.txt", true))
            //compare the input to the save password
            //if success log as success
            if (passworde == GlobalData.thepassword[GlobalData.whichPassword])
            {
                MessageBox.Show("success");
                timer1.Enabled = false;
                //MessageBox.Show("\n" + GlobalData.uid + " " + GlobalData.whichPassword + " " + "success" + " " + times);
                string result = "\n" + GlobalData.uid + " " + function.Text + " " + "success" + " " + times;
                //log to file
                file.Write(result + Environment.NewLine);
                this.Close();
               
            }
            //else log as fail
            else
            {
                MessageBox.Show("fail");
                timer1.Enabled = false;

                //MessageBox.Show("\n" + GlobalData.uid + " " + GlobalData.whichPassword + " " + "fail" + " " + times);
                //log to file
                string result = "\n" + GlobalData.uid + " " + function.Text + " " + "fail" + " " + times;

                    file.Write(result + Environment.NewLine);
                this.Close();
            }

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
