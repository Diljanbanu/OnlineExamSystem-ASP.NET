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
           // Response.Redirect("~/user/Profile.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
		{
            //if (lnkUser == null || Label1 == null)
            //    return;

            //if (Session["UserName"] != null)
            //{
            //    lnkUser.Visible = true;

            //    string userName = Session["UserName"].ToString();
            //    Label1.Text = !string.IsNullOrWhiteSpace(userName)
            //        ? userName.Trim().Substring(0, 1).ToUpper()
            //        : "U";
            //}
            //else
            //{
            //    lnkUser.Visible = false;
            //}
        }
        
    }
}