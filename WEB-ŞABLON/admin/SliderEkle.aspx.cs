using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class SliderEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnekle_Click(object sender, EventArgs e)
    {
		if (logo.HasFile == true)
		{
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			SqlCommand sorgu = new SqlCommand("insert into SLIDER(aciklama,foto)values(@aciklama0,@foto0)", baglanti);
			sorgu.Parameters.AddWithValue("foto0", "../img/" + logo.FileName);
			sorgu.Parameters.AddWithValue("aciklama", txtsira.Text);
			baglanti.Open();
			
			baglanti.Close();
			logo.SaveAs(Server.MapPath("../img/" + logo.FileName));
			Response.Redirect("KayitEklendi.aspx");
		}
		else
		{
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			SqlCommand sorgu = new SqlCommand("insert into SLIDER(aciklama)values(aciklama)", baglanti);
			sorgu.Parameters.AddWithValue("aciklama", txtsira.Text);
			baglanti.Open();
			sorgu.ExecuteNonQuery();
			baglanti.Close();
			Response.Redirect("KayitEklendi.aspx");
		}
	}
}