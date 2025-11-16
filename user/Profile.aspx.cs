using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;
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
        private void LoadUserProfileDetails()
        {
            //if (Session["UserID"] == null) return;
            //string userId = Session["UserID"].ToString();

            //getcon();
            //da = new SqlDataAdapter("SELECT FullName, Email, MobileNo FROM User_tbl WHERE ID = '" + userId + "'", con);
            //ds = new DataSet();
            //da.Fill(ds);

            //if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            //{
            //    lblFullName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
            //    lblMobileNo.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
            //    lblUsername.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            //    lblEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();

            //    txtEditFullName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
            //    txtEditEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            //    txtEditMobileNo.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
            //}

            string userId = Session["UserID"].ToString();

            getcon();
            da = new SqlDataAdapter("SELECT FullName, Email, MobileNo FROM User_tbl WHERE ID = '" + userId + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                lblFullName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
                lblMobileNo.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
                lblUsername.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                lblEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();

                txtEditFullName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
                txtEditEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txtEditMobileNo.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
            }

        }

        private void LoadExamHistory()
        {
            //if (Session["UserID"] == null) return;
            //string userId = Session["UserID"].ToString();

            //getcon();
            //da = new SqlDataAdapter("SELECT UserId, SubID, ExamId, CorrectAnswer, AttemptDate FROM ExamAttempt_tbl WHERE UserID = '" + userId + "' ORDER BY AttemptDate DESC", con);
            //ds = new DataSet();
            //da.Fill(ds);

            //gvExamHistory.DataSource = ds;
            //gvExamHistory.DataBind();

            string userId = Session["UserID"].ToString();

            getcon();

            // ✨✨✨ અહીં JOIN Query અપડેટ કરી છે ✨✨✨
            // (ધારીને કે સબ્જેક્ટ ટેબલનું નામ 'Subject_tbl' છે)
            string query = "SELECT s.SubName, ea.ExamId, ea.CorrectAnswer, ea.AttemptDate " +
                           "FROM ExamAttempt_tbl ea " +
                           "INNER JOIN Subject_tbl s ON ea.SubID = s.SubID " +
                           "WHERE ea.UserID = '" + userId + "' " +
                           "ORDER BY ea.AttemptDate DESC";
            da = new SqlDataAdapter(query, con);

            ds = new DataSet();
            da.Fill(ds);

            gvExamHistory.DataSource = ds;
            gvExamHistory.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
		{
            //if (!IsPostBack)
            //{
            //    LoadUserProfileDetails();
            //    LoadExamHistory();
            //}

            if (Session["UserID"] != null && Session["UserID"].ToString() != "")
            {
                // યુઝર લોગ-ઇન છે, તેથી પેજ લોડ કરો
                if (!IsPostBack)
                {
                    LoadUserProfileDetails();
                    LoadExamHistory();
                }
            }
            else
            {
                // યુઝર લોગ-ઇન નથી, login.aspx પર મોકલો
                Response.Redirect("~/user/login.aspx");
            }
        }

        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            //if (Session["UserID"] == null) return;

            //string userId = Session["UserID"].ToString();
            //string oldPassword = txtOldPassword.Text;
            //string newPassword = txtNewPassword.Text;
            //string confirmPassword = txtConfirmPassword.Text;

            //if (newPassword != confirmPassword)
            //{
            //    lblPasswordMessage.Text = "New Password and Confirm Password do not match! 🛑";
            //    lblPasswordMessage.ForeColor = Color.Red;
            //    return;
            //}

            //getcon();

            //SqlCommand check = new SqlCommand("SELECT COUNT(*) FROM User_tbl WHERE ID='" + userId + "' AND Password='" + oldPassword + "'", con);
            //int count = Convert.ToInt32(check.ExecuteScalar());

            //if (count == 1)
            //{
            //    cmd = new SqlCommand("UPDATE User_tbl SET Password='" + newPassword + "' WHERE ID='" + userId + "'", con);
            //    int rows = cmd.ExecuteNonQuery();

            //    if (rows > 0)
            //    {
            //        lblPasswordMessage.Text = "Password updated successfully! ✅";
            //        lblPasswordMessage.ForeColor = Color.Green;
            //        txtOldPassword.Text = "";
            //        txtNewPassword.Text = "";
            //        txtConfirmPassword.Text = "";
            //    }
            //}
            //else
            //{
            //    lblPasswordMessage.Text = "Invalid Old Password ❌";
            //    lblPasswordMessage.ForeColor = Color.Red;
            //}

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

            getcon();

            SqlCommand check = new SqlCommand("SELECT COUNT(*) FROM User_tbl WHERE ID='" + userId + "' AND Password='" + oldPassword + "'", con);
            int count = Convert.ToInt32(check.ExecuteScalar());

            if (count == 1)
            {
                cmd = new SqlCommand("UPDATE User_tbl SET Password='" + newPassword + "' WHERE ID='" + userId + "'", con);
                int rows = cmd.ExecuteNonQuery();

                if (rows > 0)
                {
                    lblPasswordMessage.Text = "Password updated successfully! ✅";
                    lblPasswordMessage.ForeColor = Color.Green;
                    txtOldPassword.Text = "";
                    txtNewPassword.Text = "";
                    txtConfirmPassword.Text = "";
                }
            }
            else
            {
                lblPasswordMessage.Text = "Invalid Old Password ❌";
                lblPasswordMessage.ForeColor = Color.Red;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            pnlEditProfile.Visible = false;
            pnlChangePassword.Visible = false;
        }

        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
           

            if (Session["UserID"] == null) return;
            string userId = Session["UserID"].ToString();
            string newFullName = txtEditFullName.Text.Trim();
            string newEmail = txtEditEmail.Text.Trim();
            string newMobileNo = txtEditMobileNo.Text.Trim();

            getcon();

            cmd = new SqlCommand("UPDATE User_tbl SET FullName='" + newFullName + "', Email='" + newEmail + "', MobileNo='" + newMobileNo + "' WHERE ID='" + userId + "'", con);
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                lblProfileMessage.Text = "Profile updated successfully! ✅";
                lblProfileMessage.ForeColor = Color.Green;
                LoadUserProfileDetails();
            }
            else
            {
                lblProfileMessage.Text = "Error updating profile. ❌";
                lblProfileMessage.ForeColor = Color.Red;
            }

        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            pnlEditProfile.Visible = true;
            pnlChangePassword.Visible = false;
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            pnlChangePassword.Visible = true;
            pnlEditProfile.Visible = false;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/user/login.aspx");
        }
    }
}