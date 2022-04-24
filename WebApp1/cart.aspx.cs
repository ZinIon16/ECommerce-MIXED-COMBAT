using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Collections;

namespace WebApp1
{
    public partial class cart : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);
        protected void Page_PreRender(object send, EventArgs e)
        {
            Title = "MY CART | INTI Mixed Combat Club";

            HttpCookie cookie = Request.Cookies["Cartcookie"];
            if (cookie != null)
            {
                lblName.Text = cookie["name"];
                lblPricePerUnit.Text = cookie["price"];
                string picture = cookie["image"];
                imgProductImage.ImageUrl = picture;
            }


        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnLogout_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/logout.aspx");
        //}

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkout.aspx");
        }

        protected void btnCalculateBill_Click(object sender, EventArgs e)
        {
            double pricePerUnit = double.Parse(lblPricePerUnit.Text);
            double price;

            int quantity = int.Parse(txtQuantity.Text);
            price = quantity * pricePerUnit;
            lblTotalPrice.Text = string.Format("{0:0.00}", price);
            lblTotalBill.Text = lblTotalPrice.Text;
        }

        protected void txtQuantity_TextChanged(object sender, EventArgs e)
        {
            double pricePerUnit = double.Parse(lblPricePerUnit.Text);
            double price;

            int quantity = int.Parse(txtQuantity.Text);
            price = quantity * pricePerUnit;
            lblTotalPrice.Text = string.Format("{0:0.00}", price);
            lblTotalBill.Text = lblTotalPrice.Text;
        }
    }
}