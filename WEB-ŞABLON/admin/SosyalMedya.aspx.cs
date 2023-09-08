using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class SosyalMedya : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
            baglanti.Open();

            // Instagram verisini çekmek için
            SqlCommand insta = new SqlCommand("SELECT link FROM SosyalMedya WHERE link LIKE '%' + @label1 + '%'", baglanti);
            insta.Parameters.AddWithValue("@label1", "instagram");
            SqlDataReader instaa = insta.ExecuteReader();
            if (instaa.Read())
            {
                txtinstagram.Text = instaa["link"].ToString();
            }
            else
            {
                txtinstagram.Text = "Veri bulunamadı";
            }
            instaa.Close();

            // Facebook verisini çekmek için
            SqlCommand face = new SqlCommand("SELECT link FROM SosyalMedya WHERE link LIKE '%' + @label2 + '%'", baglanti);
            face.Parameters.AddWithValue("@label2", "facebook");
            SqlDataReader facea = face.ExecuteReader();
            if (facea.Read())
            {
                txtfacebook.Text = facea["link"].ToString();
            }
            else
            {
                txtfacebook.Text = "Veri bulunamadı";
            }
            facea.Close();

            // Twitter verisini çekmek için
            SqlCommand twit = new SqlCommand("SELECT link FROM SosyalMedya WHERE link LIKE '%' + @label3 + '%'", baglanti);
            twit.Parameters.AddWithValue("@label3", "twitter");
            SqlDataReader twita = twit.ExecuteReader();
            if (twita.Read())
            {
                txttwitter.Text = twita["link"].ToString();
            }
            else
            {
                txttwitter.Text = "Veri bulunamadı";
            }
            twita.Close();

            baglanti.Close();
        }

    }





    protected void btnguncelle_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
        SqlCommand insta;
        SqlCommand face;
        SqlCommand twit;
        string instaa = "Update SosyalMedya Set link=@link Where id=1";
        insta = new SqlCommand(instaa, baglanti);
        string facee = "Update SosyalMedya Set link=@link Where id=2";
        face = new SqlCommand(facee, baglanti);
        string twita = "Update SosyalMedya Set link=@link Where id=3";
        twit = new SqlCommand(twita, baglanti);
        insta.Parameters.AddWithValue("@link", txtinstagram.Text);
        face.Parameters.AddWithValue("@link", txtfacebook.Text);
        twit.Parameters.AddWithValue("@link", txttwitter.Text);
        baglanti.Open();
        insta.ExecuteNonQuery();
        face.ExecuteNonQuery();
        twit.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect("Kayitguncellendi.aspx");
    }
}
