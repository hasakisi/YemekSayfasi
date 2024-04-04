using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand sql = new SqlCommand("SELECT * FROM Hakkimizda",sqlbaglantisi.baglanti());
            SqlDataReader reader = sql.ExecuteReader();
            DataList3.DataSource = reader;
            DataList3.DataBind();
        }
    }
}