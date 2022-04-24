using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;

namespace WebApp1
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);

   
        protected void Page_PreRender(object send, EventArgs e)
        {
          Title = "HOME | INTI Mixed Combat Club";
            if (!IsPostBack)
            {
                

                conn.Open();
                string com = "Select * from Categories";
                SqlDataAdapter adpt = new SqlDataAdapter(com, conn);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlDisp.DataSource = dt;
                ddlDisp.DataBind();
                ddlDisp.DataTextField = "LongName";
                ddlDisp.DataValueField = "categoryID";
                ddlDisp.DataBind();
                conn.Close();
            }
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT top 4 * FROM [Products] WHERE categoryID =@categoryID", conn);
           cmd.Parameters.AddWithValue("@categoryID", ddlDisp.SelectedValue);
            SqlDataAdapter sda = new SqlDataAdapter();
            {
                cmd.Connection = conn;
                sda.SelectCommand = cmd;

                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    dListProducts.DataSource = dt;
                    dListProducts.DataBind();

                }

            }
            conn.Close();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

    



        protected void ddlDisp_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT top 4 * FROM [Products] WHERE categoryID =@categoryID", conn);
            cmd.Parameters.AddWithValue("@categoryID", ddlDisp.SelectedValue);
            SqlDataAdapter sda = new SqlDataAdapter();
            {
                cmd.Connection = conn;
                sda.SelectCommand = cmd;

                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    dListProducts.DataSource = dt;
                    dListProducts.DataBind();

                }

            }
            conn.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("haniyadsouza12@gmail.com");
                    mailMessage.To.Add("haniyadsouza12@gmail.com");
                    mailMessage.Subject = "Newsletter";

                    mailMessage.Body = "<b>Subscriber Name : </b>" + txtName.Text + "<br/>"

                        + "<b>Sender Email : </b>" + txtEmail.Text;
                    mailMessage.IsBodyHtml = true;


                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new
                        System.Net.NetworkCredential("haniyadsouza12@gmail.com", "March12WAD");
                    smtpClient.Send(mailMessage);

                    ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('Thank you for Subscribing!', '', 'success');setTimeout(function(){window.location='kuwaitVacation.aspx';} ,1200);", true);

                    txtName.Enabled = false;
                    txtEmail.Enabled = false;
                  
                }
            }
            #pragma warning disable 0168
            catch (Exception ex)
            #pragma warning disable 0168
            {
                //Display the Error Message on Label
                lblMssg.Visible = true;
                lblMssg.ForeColor = System.Drawing.Color.Red;
                lblMssg.Text = "Your Message Cannot be Sent. Please try Again...";
            }
        }
    }
}