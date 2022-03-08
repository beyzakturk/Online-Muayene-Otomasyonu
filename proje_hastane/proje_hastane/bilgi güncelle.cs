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
    public partial class bilgi_güncelle : Form
    {
        public bilgi_güncelle()
        {
            InitializeComponent();
        }
        public string tcno;
        sqlbaglantisi bgl = new sqlbaglantisi();
        private void bilgi_güncelle_Load(object sender, EventArgs e)
        {
            mskTC.Text = tcno;
            SqlCommand komut = new SqlCommand("Select * From Tbl_Hastalar where PatientTC=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", mskTC.Text);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtAD.Text = dr[1].ToString();
                txtSoyad.Text = dr[2].ToString();
                mskNumber.Text = dr[4].ToString();
                txtPassword.Text = dr[5].ToString();
            }
            bgl.baglanti().Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update Tbl_Hastalar set PatientName=@p1, PatientSurname=@p2, PatientNumber=@p3,PatientPassword=@p4 where PatientTC=@p5", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", txtAD.Text);
            komut2.Parameters.AddWithValue("@p2", txtSoyad.Text);
            komut2.Parameters.AddWithValue("@p3", mskNumber.Text);
            komut2.Parameters.AddWithValue("@p4", txtPassword.Text);
            komut2.Parameters.AddWithValue("@p5", mskTC.Text);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
