using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class hakkimizda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!Page.IsPostBack)
		{
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			baglanti.Open();
			SqlCommand sorgu = new SqlCommand();
			sorgu.CommandText = ("Select * from HAKKIMIZDA Where id=3");
			sorgu.Connection = baglanti;
			SqlDataReader oku;
			oku = sorgu.ExecuteReader();
			while (oku.Read())
			{
				txtbaslik.Text = oku["baslik"].ToString();
				ckcontent1.InnerText = oku["aciklama"].ToString();
				Image1.ImageUrl = oku["foto"].ToString();
			}

			baglanti.Close();
		}
	}

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
		if (FileUpload1.HasFile == true)
		{
			SqlCommand komut;
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			string sorgu = "Update HAKKIMIZDA Set baslik=@baslik, aciklama=@aciklama, foto=@foto Where id=3";
			komut = new SqlCommand(sorgu, baglanti);
			komut.Parameters.AddWithValue("@baslik", txtbaslik.Text);
			komut.Parameters.AddWithValue("@aciklama", ckcontent1.InnerText);
			komut.Parameters.AddWithValue("@foto", "../img/" + FileUpload1.FileName);
			baglanti.Open();
			komut.ExecuteNonQuery();
			baglanti.Close();
			FileUpload1.SaveAs(Server.MapPath("../img/" + FileUpload1.FileName));
			Response.Redirect("Kayitguncellendi.aspx");
		}
		else
		{
			SqlCommand komut;
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			string sorgu = "Update HAKKIMIZDA Set baslik=@baslik, aciklama=@aciklama Where id=3";
			komut = new SqlCommand(sorgu, baglanti);
			komut.Parameters.AddWithValue("@baslik", txtbaslik.Text);
			komut.Parameters.AddWithValue("@aciklama", ckcontent1.InnerText);
			baglanti.Open();
			komut.ExecuteNonQuery();
			baglanti.Close();
			Response.Redirect("Kayitguncellendi.aspx");
		}

	}
}