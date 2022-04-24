using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                MultiViewCheckout.ActiveViewIndex = 0;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MultiViewCheckout.ActiveViewIndex = 1;
            lblFirstName.Text = txtFirstName.Text;
            lblLastName.Text = txtLastName.Text;
            lblPhoneNumber.Text = TextBox1.Text;

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            MultiViewCheckout.ActiveViewIndex = 0;
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            MultiViewCheckout.ActiveViewIndex = 2;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.Items[0].Selected)
            {
                MultiViewCheckout.ActiveViewIndex = 3;
            }
            else
            {
                Response.Redirect("~/payment.aspx");
            }
        }
    }
}