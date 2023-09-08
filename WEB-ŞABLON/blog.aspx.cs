using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class blog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
        SqlCommand aboutus = new SqlCommand("select * from HABER", baglanti);
        SqlDataReader aboutUs = null;
        baglanti.Open();
        aboutUs = aboutus.ExecuteReader();
        Repeater1.DataSource = aboutUs;
        Repeater1.DataBind();
        aboutUs.Close();
        baglanti.Close();
    }
}