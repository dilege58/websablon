using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;

public partial class admin_markalar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
            baglanti.Open();
            SqlCommand sorgu = new SqlCommand();
            sorgu.CommandText = ("Select * from MARKALAR Where id=1");
            sorgu.Connection = baglanti;
            SqlDataReader oku;
            oku = sorgu.ExecuteReader();
            while (oku.Read())
            {
                txtbaslik.Text = oku["baslik"].ToString();
                txttarih.Text = oku["tarih"].ToString();
                txtkonu.Text = oku["konu"].ToString();
                txtpdf.InnerText = oku["pdf"].ToString();
            }

            baglanti.Close();
        }

    }
    protected void btnguncelle_Click(object sender, EventArgs e)
    {

        if (txtmarka.HasAttributes == true)
        {
            SqlCommand komut;
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
            string sorgu = "Update markalar Set baslik=@baslik,tarih=@tarih,pdf=@pdf,konu=@konu Where id=1";
            komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@baslik", txtbaslik.Text);
            komut.Parameters.AddWithValue("@tarih", txttarih.Text);
            komut.Parameters.AddWithValue("@konu", txtkonu.Text);
            komut.Parameters.AddWithValue("@pdf", txtpdf.InnerText);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Kayitguncellendi.aspx");
        }
        else
        {
            SqlCommand komut;
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
            string sorgu = "Update markalar Set mail=@mail,telefon=@telefon,adres=@adres Where id=1";
            komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@baslik", txtbaslik.Text);
            komut.Parameters.AddWithValue("@tarih", txttarih.Text);
            komut.Parameters.AddWithValue("@konu", txtkonu.Text);
            komut.Parameters.AddWithValue("@pdf", txtpdf.InnerText);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Kayitguncellendi.aspx");
        }
    }
}
