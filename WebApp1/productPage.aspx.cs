using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace WebApp1
{
    public partial class productPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);
        protected void Page_PreRender(object send, EventArgs e)
        {
            Title = "PRODUCT PAGE | INTI Mixed Combat Club";
         
                conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Products";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dListProduct.DataSource = dt;
            dListProduct.DataBind();

            conn.Close();
            
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] == null)
            {
                Response.Redirect("~/login.aspx");
            }

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            conn.Open();
    
            SqlCommand cmd = new SqlCommand("SELECT  * FROM [Products] WHERE name LIKE '%' + @name + '%'", conn);
            cmd.Parameters.AddWithValue("@name", txtSearch.Text);
         
            SqlDataAdapter sda = new SqlDataAdapter();
            {
                cmd.Connection = conn;
                sda.SelectCommand = cmd;

                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    dListProduct.DataSource = dt;
                    dListProduct.DataBind();

                }

            }
            conn.Close();
        }

       
    }


}