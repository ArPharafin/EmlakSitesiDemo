using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace siteEmlak
{
    public class sqlbaglantisi
    {
        public SqlConnection baglan()
        {
            SqlConnection baglanti =new SqlConnection("Data Source=.;   Initial catalog=emlakDB; Integrated Security=true; ");
            baglanti.Open();
            SqlConnection.ClearAllPools();
            SqlConnection.ClearPool(baglanti);
            return (baglanti);
        }
    }
}