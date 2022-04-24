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
    public partial class productDetails : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);
        protected void Page_PreRender(object send, EventArgs e)
        {
            Title = "PRODUCT DETAILS PAGE| INTI Mixed Combat Club";


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            if (!IsPostBack)
            {
                conn.Open();
                string prodID = Request.QueryString["ID"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM [Products] WHERE ProductID= '" + prodID + "'", conn);
                SqlDataAdapter sda = new SqlDataAdapter();
                {
                    cmd.Connection = conn;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        if (prodID != null)
                        {
                            sda.Fill(dt);
                            dListProduct.DataSource = dt;
                            dListProduct.DataBind();

                        }
                    }
                }
                conn.Close();
            }
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("Cartcookie");

            conn.Open();
            string prodID = Request.QueryString["ID"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Products] WHERE ProductID= '" + prodID + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read();
            if (recordfound)
            {
                cookie["name"] = dr["name"].ToString();
                cookie["price"] = dr["unitPrice"].ToString();
                cookie["image"] = dr["imageFile"].ToString();
                Response.Cookies.Add(cookie);
                cookie.Expires = DateTime.Now.AddDays(20);
                Response.Redirect("cart.aspx");
            }
            conn.Close();
        }
    }

    }
