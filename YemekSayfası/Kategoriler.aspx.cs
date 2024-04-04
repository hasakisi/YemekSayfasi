using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class Kategoriler1 : System.Web.UI.Page
    {
        sqlbaglantisi sqlbaglantisi = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Kategoriler", sqlbaglantisi.baglanti());
            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();
        }
    }
}