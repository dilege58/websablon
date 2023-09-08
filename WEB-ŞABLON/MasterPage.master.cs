using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
        SqlCommand FOOTER = new SqlCommand("select * from FOOTERADRES Where id=1", baglanti);
        SqlDataReader footer = null;
        baglanti.Open();
        footer = FOOTER.ExecuteReader();
        Repeater1.DataSource = footer;
        Repeater1.DataBind();
        footer.Close();
        baglanti.Close();
    }
}
