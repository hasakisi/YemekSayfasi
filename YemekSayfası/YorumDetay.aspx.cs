﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        string yorumid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yorumid = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {




                SqlCommand sqlCommand = new SqlCommand("SELECT YorumAdSoyad,YorumMail,Yorumicerik,YemekAd FROM Yorumlar INNER JOIN Yemekler ON Yorumlar.Yemekid=Yemekler.yemekid WHERE Yorumid = @p1", sqlbaglantisi.baglanti());
                sqlCommand.Parameters.AddWithValue("@p1", yorumid);
                SqlDataReader reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[0].ToString();
                    TextBox2.Text = reader[1].ToString();
                    TextBox3.Text = reader[2].ToString();
                    TextBox4.Text = reader[3].ToString();

                }
                sqlbaglantisi.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sql = new SqlCommand("UPDATE Yorumlar Set Yorumicerik=@p1,YorumOnay=@p2 WHERE Yorumid=@p3", sqlbaglantisi.baglanti());
            sql.Parameters.AddWithValue("@p1", TextBox3.Text);
            sql.Parameters.AddWithValue("@p2", "True");
            sql.Parameters.AddWithValue("@p3", yorumid);
            sql.ExecuteNonQuery();
                sqlbaglantisi.baglanti().Close();



        }
    }
}