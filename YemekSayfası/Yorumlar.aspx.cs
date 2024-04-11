﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Yorumlar", sqlbaglantisi.baglanti());
            SqlDataReader reader = sqlCommand.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible=true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}