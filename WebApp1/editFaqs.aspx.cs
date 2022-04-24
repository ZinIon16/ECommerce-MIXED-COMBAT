using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApp1
{
    public partial class editFaqs : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                result.Visible = false;
                btnUpdate.Visible = false;
                btnDelete.Visible = false;

            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            conn.Open();


            SqlCommand cmd = new SqlCommand("SELECT * FROM [Faqs] WHERE Id like'" + txtSearch.Text + "%'", conn);

            cmd.Parameters.AddWithValue("Idd", txtSearch.Text); 

            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read(); //Local variable = recordfound
            if (recordfound)
            {
                result.Visible = true;
                lblResult.Text = "Record Found.....";
                lblResult.ForeColor = System.Drawing.Color.Green;
                lblQAID.Text = dr["Id"].ToString();
                lblQuestion.Text = dr["Quest"].ToString();
                lblAnswer.Text = dr["Ans"].ToString();

            }
            else
            {
                lblResult.Text = "Record not found....";
                lblResult.ForeColor = System.Drawing.Color.Red;
                result.Visible = false;

            }
            conn.Close();
        }

        public void Clear()
        {
            txtSearch.Text = txtQAID.Text = txtQuestion.Text = txtAnswer.Text = "";
            lblResult.Text = lblSuccess.Text = lblError.Text = "";
            btnSave.Visible = true;
            btnUpdate.Visible = false;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
               
                string insertQuery = " SET IDENTITY_INSERT Faqs On insert INTO Faqs(Id, Quest, Ans) VALUES (@Id,@Quest,@Ans) SET IDENTITY_INSERT Faqs OFF";


                SqlCommand comd = new SqlCommand(insertQuery, conn);
                comd.Parameters.AddWithValue("@Id", Convert.ToInt16(txtQAID.Text));
                comd.Parameters.AddWithValue("@Quest", txtQuestion.Text);
                comd.Parameters.AddWithValue("@Ans", txtAnswer.Text);
                comd.ExecuteNonQuery();

                ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('FAQS Updated Sucessfully!', '', 'success');setTimeout(function(){window.location='editFaqs.aspx';} ,1200);", true);
                //result.Visible = true;
                conn.Close();
                Clear();
            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.ToString();
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
                string UpdateSql = "UPDATE Faqs SET Quest=@Question, Ans=@Answer WHERE Id=@iid";
                SqlCommand commdd = new SqlCommand(UpdateSql, conn);
                {
                    commdd.Parameters.AddWithValue("@iid", txtQAID.Text);
                    commdd.Parameters.AddWithValue("@Question", txtQuestion.Text);
                    commdd.Parameters.AddWithValue("@Answer", txtAnswer.Text);

                    commdd.ExecuteNonQuery();
                }
                ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('Record Updated Sucessfully!', '', 'success');setTimeout(function(){window.location='editFaqs.aspx';} ,1200);", true);

                commdd.Dispose();
                conn.Close();
                Clear();
                txtQAID.Enabled = true;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            result.Visible = false;
            if (conn.State == ConnectionState.Closed)
            {
                try
                {
                    conn.Open();
                    using (SqlCommand comnd = new SqlCommand("DELETE FROM Faqs WHERE Id=@Idd", conn))
                    {
                        // If its intiger comnd.Parameters.AddWithValue("Id", txtCatID.ConvertTo Int)
                        comnd.Parameters.AddWithValue("Idd", txtQAID.Text);
                        int rows = comnd.ExecuteNonQuery();
                        txtQAID.Enabled = true;
                        ClientScript.RegisterStartupScript(Page.GetType(), "SweetAlert", "swal.fire('Record Deleted Sucessfully!', '', 'success');setTimeout(function(){window.location='editFaqs.aspx';} ,1200);", true);
                        conn.Close();
                        Clear();

                    }
                }
                catch (SqlException ex)
                {
                    lblError.Text = "Error: " + ex.ToString();
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            hlBack.Visible = true;
            result.Visible = false;
            string cid = lblQAID.Text;
            string shortName = lblQuestion.Text;
            string longName = lblAnswer.Text;

            txtQAID.Text = cid;
            txtQuestion.Text = shortName;
            txtAnswer.Text = longName;
            txtQAID.Enabled = false;

            btnUpdate.Visible = true;
            btnDelete.Visible = true;
            btnSave.Visible = false;
            btnClear.Visible = false;
        }
    }
}