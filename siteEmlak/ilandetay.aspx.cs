using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace siteEmlak
{
    public partial class ilandetay : System.Web.UI.Page
    {
        sqlbaglantisi baglan=new sqlbaglantisi();
        string ilanID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ilanID = Request.QueryString["ilanID"];
            SqlCommand cmds=new SqlCommand("Select * from Resim where ilanID='"+ilanID+"'",baglan.baglan());
            SqlDataReader drs=cmds.ExecuteReader();
            dl_slider.DataSource= drs;
            dl_slider.DataBind();

            SqlCommand   cmdd=new SqlCommand("Select * from IlanDetay where ilanID='"+ilanID+"'",baglan.baglan());
            SqlDataReader drd= cmdd.ExecuteReader(); 
            dl_detay.DataSource= drd;
            dl_detay.DataBind();
            SqlCommand cmda = new SqlCommand("Select * from ilan where ilanID='"+ilanID+"'", baglan.baglan());
            SqlDataReader dra=cmda.ExecuteReader();
            
            dl_aciklama.DataSource= dra;
            dl_aciklama.DataBind();

            SqlCommand cmdio = new SqlCommand("Select * from IcOzellik where ilanID='"+ilanID+"'", baglan.baglan());
            SqlDataReader drio=cmdio.ExecuteReader();

            dl_ic.DataSource = drio;
            dl_ic.DataBind();

            SqlCommand cmddo = new SqlCommand("Select * from DisOzellik where ilanID='" + ilanID + "'", baglan.baglan());
            SqlDataReader drdo=cmddo.ExecuteReader();
            
            dl_dis.DataSource= drdo;
            dl_dis.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e) 
        {

        }
    }
}