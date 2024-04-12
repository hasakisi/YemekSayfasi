using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Tarifler WHERE Tarifid = @p1", sqlbaglantisi.baglanti());
                sqlCommand.Parameters.AddWithValue("@p1", id);
                SqlDataReader reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();
                    TextBox2.Text = reader[2].ToString();
                    TextBox3.Text = reader[3].ToString();
                    TextBox4.Text = reader[5].ToString();
                    TextBox5.Text = reader[6].ToString();



                }
                sqlbaglantisi.baglanti().Close();

             
                            
                                SqlCommand sqlCommand2 = new SqlCommand("SELECT * FROM Kategoriler", sqlbaglantisi.baglanti());
                                SqlDataReader dr = sqlCommand2.ExecuteReader();

                                DropDownList1.DataTextField = "KategoriAd";
                                DropDownList1.DataValueField = "Kategoriid";
                                DropDownList1.DataSource = dr;
                                DropDownList1.DataBind();
                            

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("UPDATE Tarifler SET TarifDurum=1 WHERE Tarifid=@p1",sqlbaglantisi.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", id);
            sqlCommand.ExecuteNonQuery();
            sqlbaglantisi.baglanti().Close();

            SqlCommand sql = new SqlCommand("INSERT INTO Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) VALUES(@p1,@p2,@p3,@p4)",sqlbaglantisi.baglanti());
            sql.Parameters.AddWithValue("@p1", TextBox1.Text);
            sql.Parameters.AddWithValue("@p2", TextBox2.Text);
            sql.Parameters.AddWithValue("@p3", TextBox3.Text);
            sql.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            sql.ExecuteNonQuery();
            sqlbaglantisi.baglanti().Close();

        }
    }
}