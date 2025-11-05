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

        private void LoadUserProfileData(int userId)
        {
            string query = "SELECT Username, Email, LastLoginDate FROM Users WHERE UserID = @UserID";

                    // SQL Injection થી બચવા માટે Parameter નો ઉપયોગ કરો
                    cmd.Parameters.AddWithValue("@UserID", userId);
                    con.Open();

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    // Database માંથી ડેટા Labels પર Bind કરો
                    lblUsername.Text = reader["Username"].ToString();
                    lblEmail.Text = reader["Email"].ToString();

                    // જો LastLoginDate null ન હોય તો જ Format કરો
                    if (reader["LastLoginDate"] != DBNull.Value)
                    {
                        DateTime lastLogin = Convert.ToDateTime(reader["LastLoginDate"]);
                        lblLastLogin.Text = lastLogin.ToString("dd-MM-yyyy hh:mm tt");
                    }
                    else
                    {
                        lblLastLogin.Text = "N/A";
                    }
                }
                else
                {
                    lblMessage.Text = "User data not found.";
                    // જો ડેટા ન મળે તો લોગઆઉટ કરી શકાય
                    // Session.Clear(); 
                    // Response.Redirect("Login.aspx");
                }
            }
        }
        private void LoadExamHistory(int userId)
        {
            // SQL માંથી જોઈન કરીને ડેટા લાવવા માટે આ Query નો ઉપયોગ કરો
            // (Exam_Attempts અને Exams નામના બે Table હોવાનું માનવામાં આવે છે)
            string query = @"
            SELECT E.ExamName, A.Score, A.AttemptDate 
            FROM Exam_Attempts A
            INNER JOIN Exams E ON A.ExamID = E.ExamID
            WHERE A.UserID = @UserID
            ORDER BY A.AttemptDate DESC";

            
                    cmd.Parameters.AddWithValue("@UserID", userId);

                    // SqlDataAdapter નો ઉપયોગ કરીને ડેટાને સીધો DataTable માં ભરો
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        // DataTable ને GridView સાથે જોડો
                        gvExamHistory.DataSource = dt;
                        gvExamHistory.DataBind();
                    }
        }
        protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                // સેશન ચેક કરો. જો UserID ન હોય, તો લોગિન પેજ પર રિડાયરેક્ટ કરો.
                if (Session["UserID"] == null)
                {
                    Response.Redirect("Login.aspx"); // Login.aspx પર જાઓ
                }
                else
                {
                    int userId = Convert.ToInt32(Session["UserID"]);
                    LoadUserProfileData(userId);
                    LoadExamHistory(userId);
                }
            }
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProfile.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}