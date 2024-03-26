using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        string yemekid = ""; 
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];

            SqlCommand sqlCommand = new SqlCommand("SELECT YemekAd FROM Yemekler WHERE Yemekid = @p1",sqlbaglantisi.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1",yemekid);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read()) {
                Label3.Text = reader[0].ToString();

            }
            sqlbaglantisi.baglanti().Close();


            // Yorumlar
            SqlCommand cmd2 = new SqlCommand("SELECT * FROM Yorumlar WHERE yemekid = @p2",sqlbaglantisi.baglanti());
            cmd2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            DataList2.DataSource = reader2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("INSERT INTO Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) VALUES (@p1,@p2,@p3,@p4)", sqlbaglantisi.baglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox2.Text);
            command.Parameters.AddWithValue("@p3", TextBox3.Text);
            command.Parameters.AddWithValue("@p4", yemekid);

            command.ExecuteNonQuery();
            sqlbaglantisi.baglanti().Close();


        }
    }
}