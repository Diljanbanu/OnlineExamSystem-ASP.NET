using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Drawing;

namespace WebUni_Project.user
{
	public partial class Profile : System.Web.UI.Page
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
        private void ShowPanel(string panelName)
        {
            // બધા પેનલને છુપાવો
            pnlProfileDetails.Visible = false;
            pnlEditProfile.Visible = false;
            pnlChangePassword.Visible = false;

            // જરૂરી પેનલ બતાવો
            switch (panelName)
            {
                case "Profile":
                    pnlProfileDetails.Visible = true;
                    break;
                case "Edit":
                    pnlEditProfile.Visible = true;
                    lblProfileMessage.Text = "";
                    break;
                case "ChangePass":
                    pnlChangePassword.Visible = true;
                    lblPasswordMessage.Text = "";
                    // Clear textboxes when showing the panel
                    txtOldPassword.Text = "";
                    txtNewPassword.Text = "";
                    txtConfirmPassword.Text = "";
                    break;
            }
        }

        private void LoadUserProfileDetails()
        {
            if (Session["UserID"] == null) return;
            string userId = Session["UserID"].ToString();

            getcon(); // Connection Open

            string query = "SELECT FullName, Username, Email FROM Users WHERE UserID = @UserID";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@UserID", userId);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                // Set Profile details to Labels
                lblFullName.Text = reader["FullName"].ToString();
                lblUsername.Text = reader["Username"].ToString();
                lblEmail.Text = reader["Email"].ToString();

                // Set current data to Edit TextBoxes
                txtEditFullName.Text = reader["FullName"].ToString();
                txtEditEmail.Text = reader["Email"].ToString();
            }
            reader.Close();
            con.Close(); // Connection Close
        }

        private void LoadExamHistory()
        {
            if (Session["UserID"] == null) return;
            string userId = Session["UserID"].ToString();

            getcon(); // Connection Open

            // Sample query to fetch exam results - adjust table/column names as needed
            string query = "SELECT ExamName, Score, DateTaken FROM ExamResults WHERE UserID = @UserID ORDER BY DateTaken DESC";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@UserID", userId);

            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            // Bind the data to the GridView
            gvExamHistory.DataSource = dt;
            gvExamHistory.DataBind();

            con.Close(); // Connection Close
        }
        protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                // પ્રથમ વખત પેજ લોડ થાય ત્યારે પ્રોફાઇલ અને એક્ઝામ હિસ્ટરી લોડ કરો
                LoadUserProfileDetails();
                LoadExamHistory();
                ShowPanel("Profile"); // Default Panel
            }
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            ShowPanel("Edit");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            ShowPanel("ChangePass");
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            ShowPanel("Profile");
        }

        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null) return;
            string userId = Session["UserID"].ToString();
            string newFullName = txtEditFullName.Text.Trim();
            string newEmail = txtEditEmail.Text.Trim();

            getcon(); // Connection Open

            // Simple UPDATE query
            string query = "UPDATE Users SET FullName = @FullName, Email = @Email WHERE UserID = @UserID";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@FullName", newFullName);
            cmd.Parameters.AddWithValue("@Email", newEmail);
            cmd.Parameters.AddWithValue("@UserID", userId);

            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close(); // Connection Close

            if (rowsAffected > 0)
            {
                lblProfileMessage.Text = "Profile updated successfully! ✅";
                lblProfileMessage.ForeColor = Color.Green;
                LoadUserProfileDetails(); // Reload details to refresh the main panel
            }
            else
            {
                lblProfileMessage.Text = "Error updating profile. ❌";
                lblProfileMessage.ForeColor = Color.Red;
            }
        }

        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null) return;
            string userId = Session["UserID"].ToString();
            string oldPassword = txtOldPassword.Text;
            string newPassword = txtNewPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (newPassword != confirmPassword)
            {
                lblPasswordMessage.Text = "New Password and Confirm Password do not match! 🛑";
                lblPasswordMessage.ForeColor = Color.Red;
                return;
            }

            // --- SECURITY NOTE: This is NOT secure in a real application. ---

            getcon(); // Connection Open

            // This query attempts to change the password only if the OldPassword matches (for basic security)
            string query = "UPDATE Users SET Password = @NewPassword WHERE UserID = @UserID AND Password = @OldPassword";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@NewPassword", newPassword);
            cmd.Parameters.AddWithValue("@OldPassword", oldPassword);
            cmd.Parameters.AddWithValue("@UserID", userId);

            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close(); // Connection Close

            if (rowsAffected > 0)
            {
                lblPasswordMessage.Text = "Password updated successfully! ✅";
                lblPasswordMessage.ForeColor = Color.Green;
                // Clear fields after successful update
                txtOldPassword.Text = "";
                txtNewPassword.Text = "";
                txtConfirmPassword.Text = "";
            }
            else
            {
                lblPasswordMessage.Text = "Invalid Old Password or an error occurred. ❌";
                lblPasswordMessage.ForeColor = Color.Red;
            }

            // Logout logic અહીં ઉમેરો
            // FormsAuthentication.SignOut();
            // Session.Clear();
            // Response.Redirect("~/login.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
        }
    }
}