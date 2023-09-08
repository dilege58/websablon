using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class MesajSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
		SqlCommand sorgu = new SqlCommand("delete from MESAJLAR where id=@asd", baglanti);
		sorgu.Parameters.AddWithValue("@asd", int.Parse(Request.QueryString["id"]));
		baglanti.Open();
		sorgu.ExecuteNonQuery();
		baglanti.Close();
	}
}