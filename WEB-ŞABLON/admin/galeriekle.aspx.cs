using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class admin_galeriekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnekle_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
        baglanti.Open();
        SqlCommand sorgu = new SqlCommand("insert into GALERI(img)values(@img0)", baglanti);
        sorgu.Parameters.AddWithValue("@img0", "../img/" + logo.FileName);
        sorgu.ExecuteNonQuery();
        logo.SaveAs(Server.MapPath("../img/" + logo.FileName));
        Response.Redirect("KayitEklendi.aspx");
        baglanti.Close();
    }
}