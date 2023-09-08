using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
        SqlCommand slider = new SqlCommand("select * from SLIDER", baglanti);
        SqlDataReader slder = null;
        baglanti.Open();
        slder = slider.ExecuteReader();
        Repeater1.DataSource = slder;
        Repeater1.DataBind();
        slder.Close();
        baglanti.Close();

        SqlCommand marka = new SqlCommand("select * from GALERI", baglanti);
        SqlDataReader mrk = null;
        baglanti.Open();
        mrk = marka.ExecuteReader();
        Repeater2.DataSource = mrk;
        Repeater2.DataBind();
        mrk.Close();
        baglanti.Close();

        SqlCommand urun = new SqlCommand("select * from URUNLER", baglanti);
        SqlDataReader urn = null;
        baglanti.Open();
        urn = urun.ExecuteReader();
        Repeater3.DataSource = urn;
        Repeater3.DataBind();
        urn.Close();
        baglanti.Close();
    }
}