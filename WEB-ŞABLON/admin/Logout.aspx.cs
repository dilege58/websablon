using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ropola"] == null)
        {
            Response.Redirect("login.aspx");
        }
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
        SqlConnection.ClearPool(baglanti);
        SqlConnection.ClearAllPools();
        Session.Clear();
        Response.Redirect("login.aspx");
    }
}