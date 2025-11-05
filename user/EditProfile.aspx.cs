using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebUni_Project.user
{
	public partial class EditProfile : System.Web.UI.Page
	{
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;//container
        SqlConnection con;//connection
        SqlCommand cmd;//inser , update,delete
        DataSet ds;// run time container
        string fnm;
        int p, row;
        PagedDataSource pg = new PagedDataSource();

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        private void LoadCurrentDetails()
        {
            string userIdentityName = User.Identity.Name;

            // ***** DB માંથી વર્તમાન Full Name મેળવવાની લોજિક *****
            // આ માત્ર ડમી ડેટા છે
            lblCurrentEmail.Text = userIdentityName;
            txtFullName.Text = "Rohan Patel"; // DB માંથી FullName લોડ કરો

        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string userIdentityName = User.Identity.Name;
                string newFullName = txtFullName.Text.Trim();
                string newPassword = txtNewPassword.Text;

                // ***** DB માં ડેટા અપડેટ કરવાની લોજિક *****

                bool updateSuccessful = true; // DB અપડેટ સફળ થાય તો true

                // 1. FullName અપડેટ કરો
                // YourDataLayer.UpdateFullName(userIdentityName, newFullName);

                // 2. જો Password આપેલ હોય તો, Password અપડેટ કરો
                if (!string.IsNullOrEmpty(newPassword))
                {
                    // YourDataLayer.UpdatePassword(userIdentityName, newPassword);
                }

                if (updateSuccessful)
                {
                    lblMessage.Text = "Profile updated successfully! If you changed your password, you might need to re-login.";
                    // અપડેટ પછી ફરીથી વર્તમાન વિગતો લોડ કરો
                    LoadCurrentDetails();
                    txtNewPassword.Text = string.Empty;
                    txtConfirmPassword.Text = string.Empty;
                }
                else
                {
                    lblMessage.Text = "Error: Could not update profile. Please try again.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
		{
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/user/login.aspx");
            }

            if (!IsPostBack)
            {
                LoadCurrentDetails();
            }
        }
	}
}