using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                SqlCommand sqlCommand2 = new SqlCommand("SELECT * FROM Kategoriler", sqlbaglantisi.baglanti());
                SqlDataReader dr = sqlCommand2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr;
            DropDownList1.DataBind();
            }

            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Yemekler", sqlbaglantisi.baglanti());
            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();


           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible=true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible=true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle0_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand2 = new SqlCommand("INSERT INTO Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) VALUES(@p1,@p2,@p3,@p4)", sqlbaglantisi.baglanti());
            sqlCommand2.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand2.Parameters.AddWithValue("@p2", TextBox2.Text);
            sqlCommand2.Parameters.AddWithValue("@p3", TextBox3.Text);
            sqlCommand2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            sqlCommand2.ExecuteNonQuery();
            sqlbaglantisi.baglanti().Close();

        }
    }
}