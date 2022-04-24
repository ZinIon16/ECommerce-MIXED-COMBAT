using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace WebApp1
{
    public partial class clubMaster : System.Web.UI.MasterPage
    {
        
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);
     
        protected void Page_Load(object sender, EventArgs e)
        {
            SetCurrentPage();
            if (Session["firstName"] != null)
            {
                hnlinkProfile.Visible = true;
                hnlinkLogout.Visible = true;


            }
            else
            {
                hnlinkProfile.Visible = false;
                hnlinkRegistration.Visible = true;
                hnlinkLogin.Visible = true;
            }

        
        }
        private void SetCurrentPage()
        {
            var pagename = Convert.ToString(GetPageName());
            switch (pagename)
            {
                case "Default.aspx":
                    hnlinkHome.CssClass = "nav-link active";
                    break;
                case "productPage.aspx":
                    hnlinkProduct.CssClass = "nav-link active";
                    break;
                case "updateView.aspx":
                    hnlinkAdmin.CssClass = "nav-link active";
                    break;
                case "login.aspx":
                    hnlinkLogin.CssClass = "nav-link active";
                    break;
                case "registration.aspx":
                    hnlinkRegistration.CssClass = "nav-link active";
                    break;
                case "updateProfile.aspx":
                    hnlinkProfile.CssClass = "nav-link active";
                    break;
                    
                case "faq.aspx":
                    hnlinkFaq.CssClass = "nav-link active";
                    break;


            }
        }

        private object GetPageName()
        {
            return Request.Url.ToString().Split('/').Last();
        }
    }
}