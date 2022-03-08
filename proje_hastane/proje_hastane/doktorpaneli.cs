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
    public partial class doktorpaneli : Form
    {
        public doktorpaneli()
        {
            InitializeComponent();
        }
        sqlbaglantisi bgl = new sqlbaglantisi();
        private void doktorpaneli_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter("Select * From Tbl_Dr", bgl.baglanti());
            da2.Fill(dt);
            dataGridView1.DataSource = dt;

            // branş aktarma
            SqlCommand komut2 = new SqlCommand("Select BranchName From Tbl_Brans", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                cmbBranch.Items.Add(dr2[0]);
            }
            bgl.baglanti().Close();
        }

        private void btnadd_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Dr (DrName,DrSurname,DrBrans,DrTC,DrPassword) values (@d1,@d2,@d3,@d4,@d5) ", bgl.baglanti());
            komut.Parameters.AddWithValue("@d1", txtname.Text);
            komut.Parameters.AddWithValue("@d2", txtsurname.Text);
            komut.Parameters.AddWithValue("@d3", cmbBranch.Text);
            komut.Parameters.AddWithValue("@d4", makedtxtTc.Text);
            komut.Parameters.AddWithValue("@d5", txtpassword.Text);
            komut.ExecuteReader();
            bgl.baglanti().Close();
        }

        private void btndel_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Delete From Tbl_Dr where DrTC=@d1 ", bgl.baglanti());
            komut.Parameters.AddWithValue("@d1", makedtxtTc.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        private void btnupdate_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Dr set DrName=@d1,DrSurname=@d2,DrBrans=@d3,DrPassword=@d5 where DrTC=@d4 ", bgl.baglanti());
            komut.Parameters.AddWithValue("@d1", txtname.Text);
            komut.Parameters.AddWithValue("@d2", txtsurname.Text);
            komut.Parameters.AddWithValue("@d3", cmbBranch.Text);
            komut.Parameters.AddWithValue("@d4", makedtxtTc.Text);
            komut.Parameters.AddWithValue("@d5", txtpassword.Text);
            komut.ExecuteReader();
            bgl.baglanti().Close();
        }
    }
}
