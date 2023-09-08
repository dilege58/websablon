using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!Page.IsPostBack)
		{
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			baglanti.Open();
			SqlCommand sorgu = new SqlCommand();
			sorgu.CommandText = ("Select * from ILETISIM Where id=1");
			sorgu.Connection = baglanti;
			SqlDataReader oku;
			oku = sorgu.ExecuteReader();
			while (oku.Read())
			{
				txtmail.Text = oku["mail"].ToString();
				txtno.Text = oku["telefon"].ToString();
				
				txtadres.InnerText = oku["adres"].ToString();
			}

			baglanti.Close();
		}
	}

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
		if (txtno.HasAttributes == true)
		{
			SqlCommand komut;
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			string sorgu = "Update Iletisim Set mail=@mail,telefon=@telefon,adres=@adres Where id=1";
			komut = new SqlCommand(sorgu, baglanti);
			komut.Parameters.AddWithValue("@mail", txtmail.Text);
			komut.Parameters.AddWithValue("@telefon", txtno.Text);
			komut.Parameters.AddWithValue("@calismasaatleri", txtcalisma.Text);
			komut.Parameters.AddWithValue("@adres", txtadres.InnerText);
			baglanti.Open();
			komut.ExecuteNonQuery();
			baglanti.Close();
			Response.Redirect("Kayitguncellendi.aspx");
		}
		else
		{
			SqlCommand komut;
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			string sorgu = "Update Iletisim Set mail=@mail,telefon=@telefon,adres=@adres Where id=1";
			komut = new SqlCommand(sorgu, baglanti);
			komut.Parameters.AddWithValue("@mail", txtmail.Text);
			komut.Parameters.AddWithValue("@telefon", txtno.Text);
			komut.Parameters.AddWithValue("@calismasaatleri", txtcalisma.Text);
			komut.Parameters.AddWithValue("@adres", txtadres.InnerText);
			baglanti.Open();
			komut.ExecuteNonQuery();
			baglanti.Close();
			Response.Redirect("Kayitguncellendi.aspx");
		}
	}
}