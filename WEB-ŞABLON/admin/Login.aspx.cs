using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
        SqlConnection.ClearPool(baglanti);
        SqlConnection.ClearAllPools();
        baglanti.Open();
        string ad = txtkullanici.Text;
        string sifre = txtsifre.Text;

        SqlCommand com = new SqlCommand("select * from ADMIN where ad=@ad0 and sifre=@sifre0", baglanti);
        com.Parameters.AddWithValue("@ad0", ad);
        com.Parameters.AddWithValue("@sifre0", sifre);
        SqlDataReader oku = com.ExecuteReader();
        while (oku.Read())
        {
            if (txtkullanici.Text == oku["ad"].ToString() && txtsifre.Text == oku["sifre"].ToString())
            {
                Session["ropola"] = txtkullanici.Text;
                Response.Redirect("Default.aspx");
            }
        }
        oku.Close();
        baglanti.Close();

        //SqlConnection baglantiT = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantiTetra"].ConnectionString);
        //SqlConnection.ClearPool(baglantiT);
        //SqlConnection.ClearAllPools();
        //baglantiT.Open();

        //SqlCommand cmd = new SqlCommand("select * from ADMIN where ad=@ad0 and sifre=@sifre0", baglanti);
        //cmd.Parameters.AddWithValue("@ad0", ad);
        //cmd.Parameters.AddWithValue("@sifre0", sifre);
        //SqlDataReader okuyucu = cmd.ExecuteReader();
        //while (okuyucu.Read())
        //{
        //    if (txtkullanici.Text == okuyucu["ad"].ToString() && txtsifre.Text == okuyucu["sifre"].ToString())
        //    {
        //        Session["ropola"] = txtkullanici.Text;
        //        Response.Redirect("Default.aspx");
        //    }
        //}
        //okuyucu.Close();
        //baglanti.Close();
		
    }
}