using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Kategoriler WHERE Kategoriid = @p1",sqlbaglantisi.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", id);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read()) { 
                TextBox1.Text = reader[1].ToString();
                TextBox2.Text = reader[2].ToString();

            }
            sqlbaglantisi.baglanti().Close();
        }
    }
}