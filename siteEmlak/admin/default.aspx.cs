﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace siteEmlak.admin
{
    public partial class _default : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {


            SqlCommand cmdgiris = new SqlCommand("Select * from Admin where adminKullanici='" + txt_kullanici.Text + "' and adminSifre ='" + txt_sifre.Text + "'", baglan.baglan());
            SqlDataReader drgiris = cmdgiris.ExecuteReader();

            if (drgiris.Read())
            {
                Response.Redirect("panel.aspx"); 
            }
            else
            {
                btn_giris.Text = "hatali giris";
            }
        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {

        }
    }
}