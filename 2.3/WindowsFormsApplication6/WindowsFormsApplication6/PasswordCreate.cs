using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication6
{
    public partial class PasswordCreate : Form
    {
        public PasswordCreate()
        {
            InitializeComponent();
            dispassword.Text = GlobalData.thepassword[GlobalData.whichPassword];
        }

        //get words from data base
        string[] getwords(string filename)
        {

            var fullPath = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);
            var fullFileName = System.IO.Path.Combine(fullPath, filename);

            string[] words = System.IO.File.ReadAllLines(fullFileName);



            //MessageBox.Show(words[5]);

            return words;
        }

        //gentrate password
        string getpassword(string[] x, string[] y)
        {
            string password;

            //random number genrator
            Random rnd = new Random();

            // random index = random word
            int rand1 = rnd.Next(1, 1025);
            int rand2 = rnd.Next(1, 1025);

            // random between 1 and 2 , if 2 the middle number is 2 else, the middle number is 4
            int rand3 = rnd.Next(1, 3);
            // MessageBox.Show(rand3.ToString());
            string number;
            if (rand3 == 2)
                number = "2";
            else
                number = "4";

            password = x[rand1] + number + y[rand2];
            // MessageBox.Show(password);
            return password;
        }

        //on button click
        private void button1_Click(object sender, EventArgs e)
        {
            //get words from database
            string[] x = new string[2000]; string[] y = new string[2000];
            x = getwords("words1.txt");
            y = getwords("words2.txt");

            //get the password
            string password = "";
            password = getpassword(x, y);

            //update password 
            GlobalData.thepassword[GlobalData.whichPassword] = password;
            //MessageBox.Show(password);
            
            //update text box
            dispassword.Text = password;

        }

        private void dispassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
