using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class updateView : System.Web.UI.Page
    {
        protected void Page_PreRender(object send, EventArgs e)
        {
            Title = "ADMIN PAGE | INTI Mixed Combat Club";
               HyperLink masterHyper = (HyperLink)Master.FindControl("hnlinkAdmin");
            masterHyper.Visible = true;


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
        }

        //protected void btnLogout_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/logout.aspx");
        //}

        protected void btnUpdateFaq_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/editFaqs.aspx");
        }

        protected void btnUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/users.aspx");
        }
    }
}