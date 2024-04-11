using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Yemekler WHERE Durum = 1",sqlbaglantisi.baglanti());
            SqlDataReader reader = sqlCommand.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();
        }
    }
}