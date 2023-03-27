using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace siteEmlak.admin
{
    public partial class ilanekle : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {

                //kategori
                SqlCommand cmdk = new SqlCommand("Select * from Kategori", baglan.baglan());
                SqlDataReader drk = cmdk.ExecuteReader();

                ddl_kategori.DataTextField = "kategoriAd";
                ddl_kategori.DataValueField = "kategoriID";

                ddl_kategori.DataSource = drk;
                ddl_kategori.DataBind();

                //islem
                SqlCommand cmdi = new SqlCommand("Select* from Islem", baglan.baglan());
                SqlDataReader dri = cmdi.ExecuteReader();

                ddl_islem.DataTextField = "islemAd";
                ddl_islem.DataValueField = "islemID";

                ddl_islem.DataSource = dri;
                ddl_islem.DataBind();

                //kimden

                SqlCommand cmdki = new SqlCommand("Select * from Kimden", baglan.baglan());
                SqlDataReader drki = cmdki.ExecuteReader();

                ddl_kimden.DataTextField = "kimdenAd";
                ddl_kimden.DataValueField = "kimdenID";

                ddl_kimden.DataSource = drki;
                ddl_kimden.DataBind();
            }
        } 

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (fu_vitrin.HasFile)
            {
                fu_vitrin.SaveAs(Server.MapPath("/vresim/"+fu_vitrin.FileName));


                SqlCommand cmdie = new SqlCommand("insert into  ilan (ilanBaslik,ilanFiyat,kategoriID,islemID,kimdenID,ilanVitrin,ilanVResim,ilanAdres,ilanAciklama) Values('" + txt_baslik.Text + "','" + txt_fiyat.Text + "','" + ddl_kategori.SelectedValue + "' ,'" + ddl_islem.SelectedValue + "','" + ddl_kimden.SelectedValue + "','" + cbox_vitrin.Checked + "','/vresim/"+fu_vitrin.FileName+"','" + txt_adres.Text + "','" + txt_aciklama.Text + "')", baglan.baglan());
            cmdie.ExecuteNonQuery();
                Response.Redirect("ilandetayekle.aspx");
            }
            else
            {
                btn_ekle.Text = "ResimEkle";
            }
        }

        protected void ddl_kimden_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}