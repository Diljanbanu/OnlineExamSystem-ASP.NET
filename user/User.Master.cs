using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;


namespace WebUni_Project.user
{
	public partial class User : System.Web.UI.MasterPage
	{
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void lnkUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/Profile.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
		{
            //SetHeaderControls();

            // Check if the user is authenticated (assuming Session["UserName"] is set upon successful login).
            if (Session["UserName"] != null)
            {
                // **User is LOGGED IN**

                // 1. Hide the Register Link Button.
                lnkRegister.Visible = false;

                // 2. Show the User Profile Initial Link Button.
                lnkUser.Visible = true;

                // 3. Set the text of the label to the first letter of the username.
                string userName = Session["UserName"].ToString();
                if (!string.IsNullOrEmpty(userName))
                {
                    // Get the first character and convert it to uppercase for the profile initial display.
                    lblUser.Text = userName.Trim().Substring(0, 1).ToUpper();
                }
                else
                {
                    // Fallback to 'U' if the username is empty.
                    lblUser.Text = "U";
                }
            }
            else
            {
                // **User is NOT LOGGED IN**

                // 1. Show the Register Link Button.
                lnkRegister.Visible = true;

                // 2. Hide the User Profile Initial Link Button.
                lnkUser.Visible = false;
            }
        }
        
    }
}