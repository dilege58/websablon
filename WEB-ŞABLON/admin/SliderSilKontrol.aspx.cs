using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class SliderSilKontrol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!Page.IsPostBack)
		{
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			baglanti.Open();
			if (Request.QueryString["id"] != null)
			{
				int sayi = Int16.Parse(Request.QueryString["id"].ToString());
				SqlCommand sorgu = new SqlCommand();
				sorgu.CommandText = ("Select * from SLIDER Where id=" + sayi);
				sorgu.Connection = baglanti;
				SqlDataReader okuyucu = null;
				okuyucu = sorgu.ExecuteReader();
				Repeater1.DataSource = okuyucu;
				Repeater1.DataBind();
			}
			baglanti.Close();
		}
	}
}