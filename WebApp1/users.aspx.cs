using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApp1
{
    public partial class users : System.Web.UI.Page
    {
        public SqlConnection con;
        public string constr;
        public void connection()
        {
            constr = ConfigurationManager.ConnectionStrings["mixedCombat"].ToString();
            con = new SqlConnection(constr);
            con.Open();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }


        private void BindGrid()
        {
            connection();
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM [Users] ORDER BY firstName ASC"))
                {


                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);

                            gvUsers.DataSourceID = null;
                            gvUsers.DataSource = dt;
                            gvUsers.DataBind();
                        }
                    }
                }
               
            }

        }
        private void BindData(string txtSearch)
        {
            string constr = ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE email = @email", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.Parameters.AddWithValue("@email", txtSearch);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        gvUsers.DataSource = ds;
                        gvUsers.DataBind();
                    }
                }
            }
        }

        private void SearchUsers()
        {
            string constr = ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    string sql = "SELECT * FROM Users";
                    if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
                    {
                        sql += " WHERE email LIKE  @email + '%'";
                        cmd.Parameters.AddWithValue("@email", txtSearch.Text.Trim());

                    }

                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            gvUsers.DataSource = dt;
                            gvUsers.DataBind();
                 

                        }
                        else
                        {

                            dt.Rows.Add(dt.NewRow());
                            gvUsers.DataSource = dt;
                            gvUsers.DataBind();
                            gvUsers.Rows[0].Cells.Clear();
                            gvUsers.Rows[0].Cells.Add(new TableCell());
                            gvUsers.Rows[0].Cells[0].ColumnSpan = dt.Columns.Count;
                            gvUsers.Rows[0].Cells[0].Text = "<b>Sorry, no record found ..!</b>";
                            gvUsers.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                            lblRecord.Text = "RECORD NOT FOUND!";
                            lblRecord.ForeColor = System.Drawing.Color.Red;

                        }
                    }
                }
            }
        }
    

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.SearchUsers();
            hlnBack.Visible = true;
            hnlBack1.Visible = false;
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mixedCombat"].ConnectionString);
            string Email = gvUsers.DataKeys[e.RowIndex].Value.ToString();
            GridViewRow row = (GridViewRow)gvUsers.Rows[e.RowIndex];
            
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Users where email='" + Email + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            this.BindGrid();
        }
    }
}