using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Mesajlar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
		SqlCommand sorgu = new SqlCommand("select * from MESAJLAR order by id desc", baglanti);
		SqlDataReader okuyucu = null;
		baglanti.Open();
		okuyucu = sorgu.ExecuteReader();
		Repeater1.DataSource = okuyucu;
		Repeater1.DataBind();
		baglanti.Close();
	}
}