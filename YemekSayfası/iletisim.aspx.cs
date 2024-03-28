using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSayfası
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlbaglantisi conn = new sqlbaglantisi();   
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btngonder_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("INSERT INTO Mesajlar (Mesajgonderen,Mesajbaslik,Mesajmail,Mesajicerik) VALUES(@p1,@p2,@p3,@p4)", conn.baglanti());
            command.Parameters.AddWithValue("@p1", txtadsoyad.Text);
            command.Parameters.AddWithValue("@p2", txtkonu.Text);
            command.Parameters.AddWithValue("@p3", txtmail.Text);
            command.Parameters.AddWithValue("@p4", txtmesaj.Text);
            command.ExecuteNonQuery();
            conn.baglanti().Close();

        }
    }
}