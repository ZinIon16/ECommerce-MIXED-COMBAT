using System;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.VisualBasic;
using System.Text;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApp1
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);

        protected void Page_PreRender(object send, EventArgs e)
        {
            Title = "LOGIN PAGE | INTI Mixed Combat Club";


        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
      
            try
            {
                conn.Open();


                SqlCommand cmd = new SqlCommand("SELECT * FROM [Users] WHERE email=@email AND password=@password", conn);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["email"] = dr["email"].ToString();
                        Session["firstName"] = dr["firstName"].ToString();
                        Session["isAdmin"] = dr["isAdmin"].ToString();
                        int userRole = Convert.ToInt16(dr["isAdmin"].ToString());
                        lblMssg.Text = "";
                        btnLogin.BackColor = System.Drawing.Color.Green;
                        switch (userRole)
                        {
                            case 0:
                                ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('Welcome Our Esteemed Club member!', '', 'success');setTimeout(function(){window.location='productPage.aspx';} ,1500);", true);

                                break;
                            case 1:
                                ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('Welcome ADMIN!', '', 'success');setTimeout(function(){window.location='updateView.aspx';} ,1500);", true);
                              //  Response.Write("<script>alert('Welcome ADMIN!');</script>");
                              //  Response.Redirect("~/UpdateView.aspx");
                                break;

                        }
                    }
                }

                else if (passwordValidate.IsValid && emailValidate1.IsValid && emailValidate2.IsValid)
                {
                    dr.Close();
                    lblMssg.Text = "Email or Password is incorrect";
                }
                else
                    lblMssg.Text = "";
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/registration.aspx");
        }
    }
}