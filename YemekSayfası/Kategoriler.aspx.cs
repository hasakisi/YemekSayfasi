using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class Kategoriler1 : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack ==false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }


            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Kategoriler", sqlbaglantisi.baglanti());
            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();


            if (islem == "sil")
            {
                SqlCommand sil = new SqlCommand("DELETE FROM Kategoriler WHERE Kategoriid = @p1", sqlbaglantisi.baglanti());
                sil.Parameters.AddWithValue("@p1", id);
                sil.ExecuteNonQuery();
                sqlbaglantisi.baglanti().Close();

            }



            Panel1.Visible = false;
            Panel4.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Kategoriler (KategoriAd) VALUES (@p1)",sqlbaglantisi.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.ExecuteNonQuery();
            sqlbaglantisi.baglanti().Close();

        }
    }
}