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
    public partial class updateProfile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);
        string stID;
        protected void Page_PreRender(object send, EventArgs e)
        {
            Title = "MY ACCOUNT | INTI Mixed Combat Club";
            HyperLink masterHyper = (HyperLink)Master.FindControl("hnlinkProfile");
            masterHyper.Visible = true;
           

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            if (Session["email"] != null)
            {//To store Each User Session
                string IDE = Session["email"].ToString();
                stID = IDE;
            }
            if (!this.IsPostBack)
            {
                this.loadProfile();
            }
        }

        //protected void btnLogout_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/logout.aspx");
        //}



        protected void loadProfile()
        {

            conn.Open();


            SqlCommand cmd = new SqlCommand("SELECT * FROM [Users] WHERE email = @email", conn);
            cmd.Parameters.AddWithValue("email", stID);
            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read(); //Local variable = recordfound
            if (recordfound)
            {
                lblResult.Text = "G'Day" + " " + dr["firstName"].ToString() + " " + dr["lastName"].ToString();
               
                lblEmail.Text = ": " + stID;
                lblFname.Text = ": "+ dr["firstName"].ToString();
              lblLname.Text = ": " + dr["lastName"].ToString();
                lblMobile.Text = ": " + dr["mobileNumber"].ToString();
                lblEmail.Text = ": " + dr["email"].ToString();
              
                imgCheck.ImageUrl = dr["userImg"].ToString();
                txtPassword.Visible = false;
                lblPassword.Visible = false;

            }
            else
            {
                lblResult.Text = "Could Not Load User's Account....";
                lblResult.ForeColor = System.Drawing.Color.Red;


            }
            conn.Close();
        }


        protected void btnEditProf_Click(object sender, EventArgs e)
        {
            btnEditProf.Visible = false;
            lblEmail.Visible = true;

           lblMobile.Visible = true;
           // lblEmail.Visible = true;
            lblFname.Visible = true;
           lblLname.Visible = true;
            lblPassword.Visible = true;

            lblshowProf.Visible = false;


            btnUpdatChanges.Visible = true;


            lblEditPrfl.Visible = true;
            txtMobile.Visible = true;
            //txtEmail.Visible = true;
           txtFname.Visible = true;
           txtLname.Visible = true;
           txtPassword.Visible = true;

          
        }

        private void updateData()
        {


            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
               // string UpdateSql = "UPDATE Users SET mobileNumber=@mobile, password=@pass, firstName=@fName, lastName=@lName, WHERE email=@email";

                string UpdateSql = "UPDATE Users SET password=@pass, firstName=@fName, lastName=@lName, mobileNumber=@mobile WHERE email=@email";

                //SqlCommand cmd = new SqlCommand("UPDATE Users SET userImg='" + avata + "'where email='" + stID + "'", conn);


                SqlCommand commdd = new SqlCommand(UpdateSql, conn);
                {
                    commdd.Parameters.AddWithValue("@email", stID);
                    commdd.Parameters.AddWithValue("@mobile", txtMobile.Text);
                   // commdd.Parameters.AddWithValue("@email", txtEmail.Text);
                    commdd.Parameters.AddWithValue("@fName", txtFname.Text);
                    commdd.Parameters.AddWithValue("@lName", txtLname.Text);
                    commdd.Parameters.AddWithValue("@pass", txtPassword.Text);

                    commdd.ExecuteNonQuery();
                }
                ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('Profile Updated successfully!', '', 'success');setTimeout(function(){window.location='updateProfile.aspx';} ,1200);", true);
                commdd.Dispose();
                conn.Close();

            }


        }

        protected void btnUpdatChanges_Click(object sender, EventArgs e)
        {
            this.updateData();
            btnEditProf.Visible = true;

            btnUpdatChanges.Visible = false;


            lblEmail.Visible = true;
           lblMobile.Visible = true;
           // lblEmail.Visible = true;
            lblFname.Visible = true;
            lblLname.Visible = true;
            //lblPermAddr.Visible = true;
            lblshowProf.Visible = true;

            lblEditPrfl.Visible = false;
            txtMobile.Visible = false;
            txtEmail.Visible = false;
           txtFname.Visible = false;
            txtLname.Visible = false;
           txtPassword.Visible = false;

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fuImg.HasFile)
            {
                try
                {
                    if (fuImg.PostedFile.ContentType == "image/jpeg" || fuImg.PostedFile.ContentType == "image/png")
                    {
                        if (fuImg.PostedFile.ContentLength <= 153600000)
                        {
                            string filename = Path.GetFileName(fuImg.FileName);
                            fuImg.SaveAs(Server.MapPath("~/img/users/") + filename);
                            string link = "~/img/users/" + Path.GetFileName(fuImg.FileName);
                            imgCheck.ImageUrl = link;
                            lblStatus.Text = "Upladed status: Successful!";
                            lblStatus.ForeColor = System.Drawing.Color.Green;
                            conn.Open();
                            string UpdateQuery = "UPDATE Users SET userImg=@imgFile WHERE email=@email";
                            SqlCommand com = new SqlCommand(UpdateQuery, conn);
                            com.Parameters.AddWithValue("@email", stID);
                            com.Parameters.AddWithValue("@imgFile", link);
                            com.ExecuteNonQuery();

                            //Response.Write("<script>alert('Image Uploaded successfully!')</script>");
                            ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('Image Uploaded successfully!', '', 'success');setTimeout(function(){window.location='updateProfile.aspx';} ,1200);", true);
                            conn.Close();
                        }
                        else
                        {
                            lblStatus.Text = "Upladed status: File has to be less than 1500MB!";
                            lblStatus.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        lblStatus.Text = "Upladed status: We accept only image files!";
                        lblStatus.ForeColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblStatus.Text = "Upladed status: The file could not be uploaded! The following error occured: " + ex.Message;
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnDeleteImg_Click(object sender, EventArgs e)
        {
            string avata = "";
            conn.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Users SET userImg='" + avata + "'where email='" + stID + "'", conn);
            cmd.ExecuteNonQuery();
            //ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Your Profile Image has been Sucessfully Deleted !');window.location='myaccount.aspx';", true);
            ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('Your Profile Image has been Sucessfully Deleted!', '', 'success');setTimeout(function(){window.location='updateProfile.aspx';} ,1200);", true);

            conn.Close();
        }
    }
}