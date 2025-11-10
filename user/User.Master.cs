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
        private void SetHeaderControls()
        {
            // 1. Get controls using FindControl()
            // Since this is a Master Page, use FindControl directly
            LinkButton lnkRegister = (LinkButton)FindControl("lnkRegister");
            LinkButton lnkUserInitial = (LinkButton)FindControl("lnkUserInitial");
            Label lblUserInitial = (Label)FindControl("lblUserInitial");

            // If FindControl cannot locate any of the controls, stop execution
            if (lnkRegister == null || lnkUserInitial == null || lblUserInitial == null)
            {
                // If controls are not found, exit without performing any action
                return;
            }

            // 2. User login logic
            if (Session["UserID"] != null && Session["FullName"] != null)
            {
                // --- User Logged In ---

                lnkRegister.Visible = false;     // Hide Register button
                lnkUserInitial.Visible = true;   // Show Profile icon

                string fullName = Session["FullName"].ToString();
                if (fullName.Length > 0)
                {
                    // Set the first letter of the user's name
                    lblUserInitial.Text = fullName.Substring(0, 1).ToUpper();
                }
                else
                {
                    lblUserInitial.Text = "U"; // Default initial
                }
            }
            else
            {
                // --- User Not Logged In ---

                lnkRegister.Visible = true;      // Show Register button
                lnkUserInitial.Visible = false;  // Hide Profile icon
            }
        }



        protected void lnkUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/Profile.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
		{
            SetHeaderControls();
        }
        
    }
}