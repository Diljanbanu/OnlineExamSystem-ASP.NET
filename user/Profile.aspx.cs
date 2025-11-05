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

        private void LoadUserProfileDetails()
        {
            // FormsAuthentication નો ઉપયોગ કરીને યુઝરનેમ મેળવો.
            // આ યુઝરનેમ સામાન્ય રીતે યુઝરનો ઈમેઈલ આઈડી અથવા યુનિક આઈડી હોય છે.
            string userIdentityName = User.Identity.Name;

            // ***** DB માંથી ડેટા લોડ કરવાની લોજિક *****
            // તમારે અહીં SQL Connection, SqlCommand નો ઉપયોગ કરીને DB માંથી યુઝરની વિગતો લાવવી પડશે.

            // ડમી ડેટા (DUMMY DATA) - તમારે આને DB ડેટાથી બદલવું પડશે
            if (!string.IsNullOrEmpty(userIdentityName))
            {
                // DB માંથી મળેલા ડેટાને Label માં દર્શાવો
                lblFullName.Text = "Rohan Patel"; // DB માંથી FullName
                lblEmail.Text = userIdentityName; // DB માંથી Email/Username
                lblRegistrationDate.Text = "15-May-2024"; // DB માંથી MemberSince
            }
            else
            {
                // જો યુઝરનેમ ન મળે તો લોગઆઉટ કરીને Login પેજ પર મોકલો
                FormsAuthentication.SignOut();
                Response.Redirect("~/user/login.aspx");
            }
        }

        private void LoadExamHistory()
        {
            // ***** DB માંથી એક્ઝામ હિસ્ટરી લોડ કરવાની લોજિક *****
            // તમારે અહીં DB માંથી યુઝરની પરીક્ષાનો ઇતિહાસ fetch કરવો પડશે.

            // ડમી ડેટા (DUMMY DATA)
            DataTable dtHistory = new DataTable();
            dtHistory.Columns.Add("SubjectName");
            dtHistory.Columns.Add("Score", typeof(int));
            dtHistory.Columns.Add("TotalQuestions", typeof(int));
            dtHistory.Columns.Add("CorrectAnswers", typeof(int));
            dtHistory.Columns.Add("AttemptDate", typeof(DateTime));

            // ડમી રોઝ
            dtHistory.Rows.Add("Web Programming", 15, 20, 15, DateTime.Now.AddDays(-7));
            dtHistory.Rows.Add("Database Management", 18, 20, 18, DateTime.Now.AddDays(-2));

            // GridView ને ડેટા સાથે બાંધો
            gvExamHistory.DataSource = dtHistory;
            gvExamHistory.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
		{
            if (!User.Identity.IsAuthenticated)
            {
                // જો લોગિન ન હોય તો Login પેજ પર રીડાયરેક્ટ કરવું
                Response.Redirect("~/user/login.aspx");
            }

            if (!IsPostBack)
            {
                // ***** 2. પ્રોફાઇલ ડિટેલ્સ અને એક્ઝામ હિસ્ટરી લોડ કરવી *****
                LoadUserProfileDetails();
                LoadExamHistory();
            }
        }
	}
}