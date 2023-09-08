using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class admin_galerigüncelle : System.Web.UI.Page
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
				sorgu.CommandText = ("Select * from GALERI Where id=" + sayi);
				sorgu.Connection = baglanti;
				SqlDataReader oku;
				oku = sorgu.ExecuteReader();
				while (oku.Read())
				{
					Image5.ImageUrl = oku["img"].ToString();
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
		string sorgu = "Update GALERI Set  img=@img Where id=" + sayi;
		komut = new SqlCommand(sorgu, baglanti);
		komut.Parameters.AddWithValue("@img", "../img/" + Session["logo"]);
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