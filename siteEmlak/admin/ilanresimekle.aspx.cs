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
    public partial class ilanresimekle : System.Web.UI.Page
    {
        sqlbaglantisi baglan=new sqlbaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            ddl_ilan.Enabled = false;
            SqlCommand cmdi = new SqlCommand("Select TOP 1 * from ilan order by ilanID desc", baglan.baglan());
            SqlDataReader dri=cmdi.ExecuteReader();

            ddl_ilan.DataTextField = "ilanBaslik";
            ddl_ilan.DataValueField = "ilanID";

            ddl_ilan.DataSource = dri;
            ddl_ilan.DataBind();
        }

        protected void btn_bitir_Click(object sender, EventArgs e)
        {

        }

        protected void ddl_ilan_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_rEkle_Click(object sender, EventArgs e)
        {
            if (fu_iresim.HasFile)
            {
                fu_iresim.SaveAs(Server.MapPath("/iresim/" +fu_iresim.FileName));
                SqlCommand cmde=new SqlCommand("insert into Resim(ilanID,resimAd,resimResim) Values('"+ddl_ilan.SelectedValue+"','"+txt_rAd.Text+"','/iresim/"+fu_iresim.FileName+"')",baglan.baglan());
                cmde.ExecuteNonQuery();

                Response.Redirect("ilanresimekle.aspx");
            }
            else
            {
                btn_rEkle.Text = "Resim Ekle";
            }
        }

        protected void btn_bitir_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ilanozellikekle.aspx");
        }
    }
}