using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
namespace YemekSayfası
{
    public class sqlbaglantisi
    {
        public SqlConnection baglanti()
        {
            SqlConnection conn = new SqlConnection (@"Data Source=DESKTOP-RPF1DV4\SQLEXPRESS;Initial Catalog=yemektarifi;Integrated Security=True");
            conn.Open ();
            return conn;
        }
    }
}