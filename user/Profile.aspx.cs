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
                    // Cancel/Back આવ્યા પછી પ્રોફાઇલ રિફ્રેશ કરો
                    LoadUserProfileDetails();
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
            // યુઝર ID સેશનમાં છે કે નહીં તે તપાસો
            if (Session["UserID"] == null) return;
            string userId = Session["UserID"].ToString();

            getcon(); // Connection Open

            // ક્વેરી: ID દ્વારા FullName, Email, અને MobileNo ખેંચો
            string query = "SELECT FullName, Email, MobileNo FROM User_tbl WHERE ID = @UserID";

            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@UserID", userId);

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            con.Close(); // Connection Close

            // ડેટા મળ્યો છે કે નહીં તે તપાસો
            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                // 1. Profile Details Labels માં ડેટા સેટ કરો
                lblFullName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();

                // MobileNo Labels માં સેટ કરો
                lblMobileNo.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();

                // lblUsername માટે, Email નો ઉપયોગ
                lblUsername.Text = ds.Tables[0].Rows[0]["Email"].ToString();

                lblEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();

                // 2. Edit TextBoxes માં વર્તમાન ડેટા સેટ કરો
                txtEditFullName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
                txtEditEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();

                // MobileNo એડિટ ટેક્સ્ટબોક્સમાં સેટ કરો
                txtEditMobileNo.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
            }
        }

        private void LoadExamHistory()
        {
            if (Session["UserID"] == null) return;
            string userId = Session["UserID"].ToString();

            getcon(); // Connection Open

            // ExamResults માટેનો Simple Query
            string query = "SELECT ExamName, Score, DateTaken FROM ExamAttemp_tbl WHERE UserID = @UserID ORDER BY DateTaken DESC";
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
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/user/login.aspx");
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            ShowPanel("ChangePass");
        }

        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null) return;
            string userId = Session["UserID"].ToString();
            string newFullName = txtEditFullName.Text.Trim();
            string newEmail = txtEditEmail.Text.Trim();
            string newMobileNo = txtEditMobileNo.Text.Trim(); // Mobile No મેળવો

            getcon(); // Connection Open

            // Simple UPDATE query: FullName, Email, અને MobileNo અપડેટ કરો.
            // યુઝર ટેબલનું નામ 'User_tbl' વાપર્યું છે.
            string query = "UPDATE User_tbl SET FullName = @FullName, Email = @Email, MobileNo = @MobileNo WHERE ID = @UserID";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@FullName", newFullName);
            cmd.Parameters.AddWithValue("@Email", newEmail);
            cmd.Parameters.AddWithValue("@MobileNo", newMobileNo); // Mobile No Parameter
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
            // યુઝર ટેબલનું નામ 'User_tbl' વાપર્યું છે.
            string query = "UPDATE User_tbl SET Password = @NewPassword WHERE ID = @UserID AND Password = @OldPassword";
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
            ShowPanel("Profile");
        }
    }
}