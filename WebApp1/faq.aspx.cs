using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApp1
{
    public partial class faq : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = "select * from Faqs ";

            SqlDataAdapter da = new SqlDataAdapter(query, conn);

            DataSet ds = new DataSet();
            da.Fill(ds, "Faqs");

            //rpFaq.DataSourceID = null;
            repFaqs.DataSource = ds;
            repFaqs.DataMember = "Faqs";
            repFaqs.DataBind();
            conn.Close();
        }

    }
}
