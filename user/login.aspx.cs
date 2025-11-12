using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebUni_Project.user
{
	public partial class Login : System.Web.UI.Page
	{
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;//container
        SqlConnection con;//connection
        SqlCommand cmd;//inser , update,delete
        DataSet ds;// run time container
        string fnm;
        int i;


        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void clear()
        {
            txtunm.Text = "";
            txtpass.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
		{
            if (Session["UserId"] != null)
            {
                Response.Redirect("Profile.aspx");
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            //if (txtunm.Text != null && txtpass.Text != null)
            //{
            //    getcon();
            //    cmd = new SqlCommand("select count(*) from User_tbl where Email='" + txtunm.Text + "' and Password='" + txtpass.Text + "'", con);

            //    i = Convert.ToInt32(cmd.ExecuteScalar());
            //    //clear();

            //    if (i > 0) 
            //    {
            //        Session["user"] = txtunm.Text;
            //        Response.Redirect("index.aspx");

            //    }
            //    //else if (txtunm.Text == "diljaanumretiya@gmail.com" && txtpass.Text == "diljan123")
            //    //{
            //    //    Session["user"] = txtunm.Text;
            //    //    Response.Redirect("admin/index.aspx");

            //    //}
            //}
            //else
            //{
            //    Response.Write("<script>alert('Invalid Email or Password')</script>");
            //}
            //if (txtunm.Text != null && txtpass.Text != null)
            //}
            //else
            //{
            //    Response.Write("<script>alert('Please enter Email and Password')</script>");
            //}

            getcon();
                da = new SqlDataAdapter("SELECT ID, FullName FROM User_tbl WHERE Email='"+txtunm+"' AND Password='"+txtpass.Text+"'",con);
                ds = new DataSet();
                da.Fill(ds);


                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {

                    string fullName = ds.Tables[0].Rows[0]["FullName"].ToString();

                    Session["UserName"] = fullName;

                    Session["UserID"] = ds.Tables[0].Rows[0]["ID"].ToString();

                    Session["user"] = txtunm.Text;

                    clear();
                    Response.Redirect("~/Index.aspx"); 
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password')</script>");
                }
         

        }
    }
}