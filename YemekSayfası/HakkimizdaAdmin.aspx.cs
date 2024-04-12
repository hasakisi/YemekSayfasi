using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            if (Page.IsPostBack == false)
            {

                SqlCommand sql = new SqlCommand("SELECT * FROM Hakkimizda", sqlbaglantisi.baglanti());
                SqlDataReader reader = sql.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[0].ToString();
                }
                sqlbaglantisi.baglanti().Close();
            }
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible=true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible=false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("UPDATE Hakkimizda SET Metin=@p1", sqlbaglantisi.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand.ExecuteNonQuery();
            sqlbaglantisi.baglanti().Close();
        }
    }
}