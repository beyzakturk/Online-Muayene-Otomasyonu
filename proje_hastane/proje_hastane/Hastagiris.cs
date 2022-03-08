using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace proje_hastane
{
    public partial class Hastagiris : Form
    {
        public Hastagiris()
        {
            InitializeComponent();
        }
        
        sqlbaglantisi bgl = new sqlbaglantisi();
        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            HastaÜyelik fr = new HastaÜyelik();
            fr.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Hastalar Where PatientTC=@p1 and PatientPassword=@p2", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", mskTc.Text);
            komut.Parameters.AddWithValue("@p2", txtpassword.Text);
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                emuayne fr = new emuayne();
                fr.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("You entered incorrectly");
            }
            bgl.baglanti().Close();
        }
    }
}
