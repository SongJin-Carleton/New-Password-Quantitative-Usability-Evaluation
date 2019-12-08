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

namespace WindowsFormsApplication6
{
        // global variable that record the UID, what is the Password for, and the passwords
        public class GlobalData
        {
            private static int Uid = 0;
            private static int WhichPassword = 0;
            private static string[] Thepassword = new string[3];

            public static string[] thepassword
            {
                get { return Thepassword; }
                set { Thepassword = value; }
            }
            public static int uid
            {
                get { return Uid; }
                set { Uid = value; }
            }
            public static int whichPassword
            {
                get { return WhichPassword; }
                set { WhichPassword = value; }
            }

        }
        public partial class MainPage : Form
        {
            public string[] passwords = new string[3];

            public MainPage()
            {
                InitializeComponent();
                Random rnd = new Random();
                GlobalData.uid = rnd.Next(1, 1000000);
            }

            // when click on get password create PasswordCreate window
            private void button1_Click(object sender, EventArgs e)
            {
                GlobalData.whichPassword = 0;
                PasswordCreate newpassword = new PasswordCreate();
                newpassword.Show();

            }

            private void password_TextChanged(object sender, EventArgs e)
            {

            }

            private void Form1_Load(object sender, EventArgs e)
            {

            }

            private void button2_Click(object sender, EventArgs e)
            {
                GlobalData.whichPassword = 1;
                PasswordCreate newpassword = new PasswordCreate();
                newpassword.Show();



            }

            private void button3_Click(object sender, EventArgs e)
            {
                GlobalData.whichPassword = 2;
                PasswordCreate newpassword = new PasswordCreate();
                newpassword.Show();

            }
            // when click on Test create PasswordTest window
            private void button4_Click(object sender, EventArgs e)
            {
                //random number genrator
                Random rnd = new Random();

                // random index = random word
                int rand1 = rnd.Next(0, 3);
                GlobalData.whichPassword = rand1;

                PasswordTest newpassword = new PasswordTest();
                newpassword.Show();


        }


    }
    
}
