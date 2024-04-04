using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlbaglantisi sql = new sqlbaglantisi();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM Yemekler WHERE Kategoriid=@p1",sql.baglanti());
            cmd.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}