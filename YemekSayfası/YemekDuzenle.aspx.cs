﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Yemekler WHERE Yemekid = @p1", sqlbaglantisi.baglanti());
                sqlCommand.Parameters.AddWithValue("@p1", id);
                SqlDataReader reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();
                    TextBox2.Text = reader[2].ToString();
                    TextBox2.Text = reader[2].ToString();


                }
                sqlbaglantisi.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    SqlCommand sqlCommand2 = new SqlCommand("SELECT * FROM Kategoriler", sqlbaglantisi.baglanti());
                    SqlDataReader dr = sqlCommand2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";
                    DropDownList1.DataSource = dr;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sql = new SqlCommand("UPDATE Yemekler SET YemekAd= @p1, YemekMalzeme=@p2, YemekTarif=@p3,Kategoriid=@p4 WHERE Yemekid=@p5", sqlbaglantisi.baglanti());
            sql.Parameters.AddWithValue("@p1", TextBox1.Text);
            sql.Parameters.AddWithValue("@p2", TextBox2.Text);
            sql.Parameters.AddWithValue("@p3", TextBox3.Text);
            sql.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            sql.Parameters.AddWithValue("@p5", id);
            sql.ExecuteNonQuery();
            sqlbaglantisi.baglanti().Close();
        }
    }
}