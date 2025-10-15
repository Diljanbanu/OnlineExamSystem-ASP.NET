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
	public partial class login : System.Web.UI.Page
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
            //if (Session["User"].ToString()!="")
            //{
            //    getcon();
            //    da=new SqlDataAdapter("SElect * from User_tbl where Email='" + Session["user"] +"'",con);
            //    ds=new DataSet();
            //    da.Fill(ds);

            //    int uid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            //    string s= ds.Tables[0].Rows[0][1].ToString();

            //}


            if (Session["UserId"] != null)
            {
                // Already logged in → direct profile page પર મોકલો
                Response.Redirect("Profile.aspx");
            }

        }

        protected void btnlog_Click(object sender, EventArgs e)
        {

            if (txtunm.Text != null && txtpass.Text != null)
            {
                getcon();
                cmd = new SqlCommand("select count(*) from User_tbl where Email='" + txtunm.Text + "' and Password='" + txtpass.Text + "'", con);

                i = Convert.ToInt32(cmd.ExecuteScalar());
                //clear();
               
                if (i > 0) 
                {
                    Session["user"] = txtunm.Text;
                    Response.Redirect("index.aspx");

                }
                //else if (txtunm.Text == "diljaanumretiya@gmail.com" && txtpass.Text == "diljan123")
                //{
                //    Session["user"] = txtunm.Text;
                //    Response.Redirect("admin/index.aspx");

                //}
            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password')</script>");
            }


        }
    }
}