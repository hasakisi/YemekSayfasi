using System;
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
            Panel4.Visible = false;

            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Yorumlar WHERE YorumOnay = 1", sqlbaglantisi.baglanti());
            SqlDataReader reader = sqlCommand.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

            SqlCommand sqlCommand2 = new SqlCommand("SELECT * FROM Yorumlar WHERE YorumOnay = 0", sqlbaglantisi.baglanti());
            SqlDataReader reader2 = sqlCommand2.ExecuteReader();
            DataList2.DataSource = reader2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible=true;
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
    }
}