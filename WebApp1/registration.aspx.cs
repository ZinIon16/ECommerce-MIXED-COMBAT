using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApp1
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);
        protected void Page_PreRender(object send, EventArgs e)
        {
            Title = "REGISTRATION PAGE | INTI Mixed Combat Club";


        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            conn.Open();
            string insertQuery = " INSERT INTO Users (email,firstName,lastName,mobileNumber,password) values (@email,@firstName,@lastName,@mobileNumber,@password)";
            string checkQuery = " select Count(*) from Users where email=@email";
            string checkQueryMobile = " select Count(*) from Users where mobileNumber=@mobileNumber";
            SqlCommand cmd = new SqlCommand(checkQuery, conn);
            SqlCommand cmdMobile = new SqlCommand(checkQueryMobile, conn);
            SqlCommand com = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmdMobile.Parameters.AddWithValue("@mobileNumber", txtMobile.Text);
            int result = (int)cmd.ExecuteScalar();
            int resultMobile = (int)cmdMobile.ExecuteScalar();
            if (result != 0)
            {
                Response.Write("<script>alert('Sorry This Email Already Exist in Our System!')</script>");
            }
            else if (resultMobile != 0)
            {

                Response.Write("<script>alert('Sorry This Mobile Number Already Exist in Our System!')</script>");

            }
            else
            {
                com.Parameters.AddWithValue("@email", txtEmail.Text);
                com.Parameters.AddWithValue("@firstName", txtFname.Text);
                com.Parameters.AddWithValue("@lastName", txtLname.Text);
                com.Parameters.AddWithValue("@mobileNumber", txtMobile.Text);
                com.Parameters.AddWithValue("@password", txtPassword.Text);
                com.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('Congratulation! You are now a Mixed Combat Club member!', '', 'success');setTimeout(function(){window.location='login.aspx';} ,2500);", true);

            }

            conn.Close();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }
    }
}