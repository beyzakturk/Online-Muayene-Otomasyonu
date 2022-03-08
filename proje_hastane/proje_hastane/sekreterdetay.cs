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
    public partial class sekreterdetay : Form
    {
        public sekreterdetay()
        {
            InitializeComponent();
        }
        public string tc;
        sqlbaglantisi bgl = new sqlbaglantisi();
        private void sekreterdetay_Load(object sender, EventArgs e)
        {
            lblTC.Text = tc;

            // branşları datagride aktarma
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("Select * From Tbl_Brans", bgl.baglanti());
            da.Fill(dt);
            dataGridView1.DataSource = dt;

            // doktorları datagride aktarma
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter("Select (DrName + ' ' + DrSurname) as 'Doctors' , DrBrans From Tbl_Dr", bgl.baglanti());
            da2.Fill(dt2);
            dataGridView2.DataSource = dt2;

            // branşı combox aktarma
            SqlCommand komut2 = new SqlCommand("Select BranchName From Tbl_Brans", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                cmbbrans.Items.Add(dr2[0]);
            }
            bgl.baglanti().Close();
        }

        private void btnsave_Click(object sender, EventArgs e)
        {
            SqlCommand komutkaydet = new SqlCommand("insert into Tbl_randevu (AppointmentDate,AppointmentHour,AppointmentBranch,AppointmentDoctor) values (@r1,@r2,@r3,@r4)", bgl.baglanti());
            komutkaydet.Parameters.AddWithValue("@r1", mskdate.Text);
            komutkaydet.Parameters.AddWithValue("@r2", mskhour.Text);
            komutkaydet.Parameters.AddWithValue("@r3", cmbbrans.Text);
            komutkaydet.Parameters.AddWithValue("@r4", cmbdoctor.Text);
            komutkaydet.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        private void cmbbrans_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbdoctor.Items.Clear();
            SqlCommand komut = new SqlCommand("Select DrName,DrSurname From Tbl_Dr where DrBrans=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", cmbbrans.Text);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                cmbdoctor.Items.Add(dr[0] + "" + dr[1]);
            }
            bgl.baglanti().Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_duyuru (announcements) values (@d1) ", bgl.baglanti());
            komut.Parameters.AddWithValue("@d1", rchduyuru.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            doktorpaneli drp = new doktorpaneli();
            drp.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            branşpaneli brs = new branşpaneli();
            brs.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            randevulistesi rl = new randevulistesi();
            rl.Show();

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
