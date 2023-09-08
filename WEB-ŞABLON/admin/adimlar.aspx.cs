using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class admin_adimlar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!Page.IsPostBack)
		{
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			baglanti.Open();
			SqlCommand sorgu = new SqlCommand();
			sorgu.CommandText = ("Select * from NASILCALISIYORUZ Where id=1");
			sorgu.Connection = baglanti;
			SqlDataReader oku;
			oku = sorgu.ExecuteReader();
			while (oku.Read())
			{
				txtbaslik1.Text = oku["baslik1"].ToString();
				txtbaslik2.Text = oku["baslik2"].ToString();
				txtbaslik3.Text = oku["baslik3"].ToString();
				txtaciklama1.InnerText = oku["aciklama1"].ToString();
				txtaciklama2.InnerText = oku["aciklama2"].ToString();
				txtaciklama3.InnerText = oku["aciklama3"].ToString();
				Image1.ImageUrl = oku["foto1"].ToString();
				Image2.ImageUrl = oku["foto2"].ToString();
				Image3.ImageUrl = oku["foto3"].ToString();
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
			string sorgu = "Update NASILCALISIYORUZ Set baslik1=@baslik1,baslik2=@baslik2,baslik3=@baslik3, aciklama1=@aciklama1,aciklama2=@aciklama2,aciklama3=@aciklama3, foto1=@foto1,foto2=@foto2,foto3=@foto3  Where id=1";
			komut = new SqlCommand(sorgu, baglanti);
			komut.Parameters.AddWithValue("@baslik1", txtbaslik1.Text);
			komut.Parameters.AddWithValue("@baslik2", txtbaslik2.Text);
			komut.Parameters.AddWithValue("@baslik3", txtbaslik3.Text);
			komut.Parameters.AddWithValue("@aciklama1", txtaciklama1.InnerText);
			komut.Parameters.AddWithValue("@aciklama2", txtaciklama2.InnerText);
			komut.Parameters.AddWithValue("@aciklama3", txtaciklama3.InnerText);
			komut.Parameters.AddWithValue("@foto1", "../img/" + FileUpload1.FileName);
			komut.Parameters.AddWithValue("@foto2", "../img/" + FileUpload2.FileName);
			komut.Parameters.AddWithValue("@foto3", "../img/" + FileUpload3.FileName);
			baglanti.Open();
			komut.ExecuteNonQuery();
			baglanti.Close();
			FileUpload1.SaveAs(Server.MapPath("../img/" + FileUpload1.FileName));
			FileUpload2.SaveAs(Server.MapPath("../img/" + FileUpload2.FileName));
			FileUpload3.SaveAs(Server.MapPath("../img/" + FileUpload3.FileName));
			Response.Redirect("Kayitguncellendi.aspx");
		}
		else
		{
			SqlCommand komut;
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			string sorgu = "Update NASILCALISIYORUZ Set baslik1=@baslik1,baslik2=@baslik2,baslik3=@baslik3, aciklama1=@aciklama1,aciklama2=@aciklama2,aciklama3=@aciklama3 Where id=1";
			komut = new SqlCommand(sorgu, baglanti);
			komut.Parameters.AddWithValue("@baslik1", txtbaslik1.Text);
			komut.Parameters.AddWithValue("@baslik2", txtbaslik2.Text);
			komut.Parameters.AddWithValue("@baslik3", txtbaslik3.Text);
			komut.Parameters.AddWithValue("@aciklama1", txtaciklama1.InnerText);
			komut.Parameters.AddWithValue("@aciklama2", txtaciklama2.InnerText);
			komut.Parameters.AddWithValue("@aciklama3", txtaciklama3.InnerText);
			baglanti.Open();
			komut.ExecuteNonQuery();
			baglanti.Close();
			Response.Redirect("Kayitguncellendi.aspx");
		}

	}
}