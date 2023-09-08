using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class MesajDetay : System.Web.UI.Page
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
				sorgu.CommandText = ("Select * from MESAJLAR Where id=" + sayi);
				sorgu.Connection = baglanti;
				SqlDataReader oku;
				oku = sorgu.ExecuteReader();
				while (oku.Read())
				{
					lblisim.Text = oku["isim"].ToString();
					lblmail.Text = oku["mail"].ToString();
					lblno.Text = oku["no"].ToString();
					lblmesaj.Text = oku["mesaj"].ToString();
					lbldurum.Text = oku["durum"].ToString();
				}
				baglanti.Close();
			}
			else
			{
				Response.Redirect("Mesajlar.aspx");
			}
		}
	}

    protected void btnekle_Click(object sender, EventArgs e)
    {
		if (DropDownList1.SelectedValue != "-1")
		{
			int sayi = Int16.Parse(Request.QueryString["id"].ToString());
			SqlCommand komut;
			SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
			string sorgu = "Update MESAJLAR Set durum=@durum Where id=" + sayi;
			komut = new SqlCommand(sorgu, baglanti);
			komut.Parameters.AddWithValue("@durum", DropDownList1.SelectedItem.Text);
			baglanti.Open();
			komut.ExecuteNonQuery();
			baglanti.Close();
			Response.Redirect("KayitGuncellendi.aspx");
		}

		else
		{
			Response.Redirect("KayitGuncellendi.aspx");
		}
	}
}