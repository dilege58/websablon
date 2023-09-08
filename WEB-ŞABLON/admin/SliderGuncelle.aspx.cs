using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class SliderGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

		if (!Page.IsPostBack)
		{
			if (Request.QueryString["id"] != null)
			{
				SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
				baglanti.Open();
				int sayi = Int16.Parse(Request.QueryString["id"].ToString());
				SqlCommand sorgu = new SqlCommand();
				sorgu.CommandText = ("Select * from Slider Where id=" + sayi);
				sorgu.Connection = baglanti;
				SqlDataReader oku;
				oku = sorgu.ExecuteReader();
				while (oku.Read())
				{
					Image5.ImageUrl = oku["foto"].ToString();
					txtaciklama.Text = oku["aciklama"].ToString();
					Session["logo"] = oku["foto"].ToString();
				}
			}
		}
	}

    protected void btnekle_Click(object sender, EventArgs e)
    {

		if (logo.HasFile == true)
		{
			Session["logo"] = logo.FileName;
		}
		int sayi = Int16.Parse(Request.QueryString["id"].ToString());
		SqlCommand komut;
		SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
		string sorgu = "Update Slider Set foto=@foto, aciklama=@aciklama Where id=" + sayi;
		komut = new SqlCommand(sorgu, baglanti);
		komut.Parameters.AddWithValue("@aciklama", txtaciklama.Text);
		komut.Parameters.AddWithValue("@foto", "../img/" + Session["logo"]);
		baglanti.Open();
		komut.ExecuteNonQuery();
		baglanti.Close();
		if (logo.HasFile == true)
		{
			logo.SaveAs(Server.MapPath("../img/" + logo.FileName));
		}
		Response.Redirect("Kayitguncellendi.aspx");

	}
}