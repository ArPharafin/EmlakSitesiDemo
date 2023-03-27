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
    public partial class ilanozellikekle : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            ddl_ilan.Enabled = false;
            SqlCommand cmd = new SqlCommand("Select TOP 1* from ilan order by ilanID desc",baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();
            
            ddl_ilan.DataTextField = "ilanBaslik";
            ddl_ilan.DataValueField = "ilanID";

            ddl_ilan.DataSource = dr;
            ddl_ilan.DataBind();
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdio = new SqlCommand("insert into IcOzellik (ilanID,kuvet,asansor,somine,kapici) Values('"+ddl_ilan.SelectedValue+"','"+cbox_kuvet.Checked+"','"+cbox_asansor.Checked+"','"+cbox_somine.Checked+"','"+cbox_kapici.Checked+"')",  baglan.baglan());
            cmdio.ExecuteNonQuery();

            SqlCommand cmddo = new SqlCommand("insert into DisOzellik (ilanID,alarm,park,oyun,yuruyus) Values('"+ddl_ilan.SelectedValue+"','"+cbox_alarm.Checked+"','"+cbox_park.Checked+"','"+cbox_oyun.Checked+"','"+cbox_yuruyus.Checked+"') ",baglan.baglan());
            cmddo.ExecuteNonQuery();
            Response.Redirect("panel.aspx");
        }
    }
}