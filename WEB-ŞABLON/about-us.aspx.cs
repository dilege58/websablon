using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class about_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
        SqlCommand aboutus = new SqlCommand("select * from HAKKIMIZDA Where id=3", baglanti);
        SqlDataReader aboutUs = null;
        baglanti.Open();
        aboutUs = aboutus.ExecuteReader();
        Repeater1.DataSource = aboutUs;
        Repeater1.DataBind();
        aboutUs.Close();
        baglanti.Close();

        
        SqlCommand about = new SqlCommand("select * from HAKKIMIZDA Where id=3", baglanti);
        SqlDataReader abouts = null;
        baglanti.Open();
        abouts = about.ExecuteReader();
        Repeater2.DataSource = abouts;
        Repeater2.DataBind();
        abouts.Close();
        baglanti.Close();

        SqlCommand about1 = new SqlCommand("select * from HAKKIMIZDA Where id=3", baglanti);
        SqlDataReader about2 = null;
        baglanti.Open();
        about2 = about1.ExecuteReader();
        Repeater3.DataSource = about2;
        Repeater3.DataBind();
        about2.Close();
        baglanti.Close();
    }
}