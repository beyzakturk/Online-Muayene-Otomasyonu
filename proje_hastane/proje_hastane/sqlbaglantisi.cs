using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace proje_hastane
{
    class sqlbaglantisi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-FL4JAU4;Initial Catalog=ProjeHastane;integrated security=True");
            baglan.Open();
            return baglan;
        }
    }
}
