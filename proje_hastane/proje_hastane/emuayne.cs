using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proje_hastane
{
    public partial class emuayne : Form
    {
        public emuayne()
        {
            InitializeComponent();
        }
        public string tc1;
        private void dentalToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void yesToolStripMenuItem3_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make a warm application make an appointment if there are no changes.";
        }

        private void yesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "Don't worry! This is because excess fluids in the body cannot be excreted through the urine. Make an appointment if you have heart palpitations.";
        }

        private void noToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "Looks like it's all right. You shouldn't spend too much time in hospital, unless it's an emergency, we recommend not making an appointment. Healthy days!";

        }

        private void yesToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "X-rays needs to be taken.Make an appointment";

        }

        private void noToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "you can make an appointment for precaution";
        }

        private void toolStripMenuItem8_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "It's quite normal at this age , we recommend staying at home";
        }

        private void toolStripMenuItem10_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "Could be a hormonal disorder. Make an appointment for a blood test";
        }

        private void noToolStripMenuItem3_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void yesToolStripMenuItem4_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void noToolStripMenuItem4_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "please stay home.do not come to the hospital unless you have a fever.";
        }

        private void yesToolStripMenuItem5_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void noToolStripMenuItem5_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "please stay home.consume hot drinks";
        }

        private void over20ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment"; 

        }

        private void over60ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "please stay home.it's pretty normal. don't worry.";
        }

        private void toolStripMenuItem11_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment"; 
        }

        private void toolStripMenuItem13_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "please stay home.it's pretty normal";
        }

        private void pressureToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void cardiacToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void yesToolStripMenuItem6_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "if you're coming for a general check-up , please don't come stay home";
        }

        private void noToolStripMenuItem6_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void yesToolStripMenuItem7_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "if you're coming for a general check-up , please don't come stay home";
        }

        private void noToolStripMenuItem7_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void severeAbdominalPainToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void yesToolStripMenuItem9_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void noToolStripMenuItem9_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment if it's permanent";
        }

        private void yesToolStripMenuItem10_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void noToolStripMenuItem10_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "Consume mineral water.";
        }

        private void pregnantToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void yesToolStripMenuItem11_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment";
        }

        private void noToolStripMenuItem11_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "It could be periodic.";
        }

        private void kidneyPainToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment for blood tests";
        }

        private void excretoryDiscomfortToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment for urinalysis";
        }

        private void toolStripMenuItem16_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment ";
        }

        private void toolStripMenuItem14_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "please brush your teeth regularly first";
        }

        private void personalHelpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment ";
        }

        private void fluToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void oneWeekToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment ";
        }

        private void dayToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "it may not be important. please wait at home.";
        }

        private void dayToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "it may not be important. please wait at home.";
        }

        private void oneWeekToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            lblanswers.Text = "make an appointment ";
        }

        private void btnrandevu_Click(object sender, EventArgs e)
        {
            randevu fr = new randevu();
            fr.Show();
            this.Hide();
        }

        private void dermatologyToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void ınternalMedicineToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void emuayne_Load(object sender, EventArgs e)
        {

        }
    }
    }
    
