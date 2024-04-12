using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class Tarifler : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel4.Visible = false;
            SqlCommand cmd = new SqlCommand("SELECT * FROM Tarifler WHERE TarifDurum=0 ",sqlbaglantisi.baglanti());
            SqlDataReader sql = cmd.ExecuteReader();
            DataList1.DataSource = sql;
            DataList1.DataBind();


            SqlCommand cmd2 = new SqlCommand("SELECT * FROM Tarifler WHERE TarifDurum=1 ", sqlbaglantisi.baglanti());
            SqlDataReader sql2 = cmd2.ExecuteReader();
            DataList2.DataSource = sql2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible =false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible=false;
        }
    }
}