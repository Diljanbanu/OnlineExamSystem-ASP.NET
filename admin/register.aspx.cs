using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebUni_Project.admin
{
	public partial class register : System.Web.UI.Page
	{
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlCommand cmd;
        SqlConnection con;
        DataSet ds;
        IDataAdapter da;
        void clear()
        {
            txtfnm.Text = "";
            txteml.Text = "";
            txtpsw.Text = "";
        }


        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

       
        protected void Page_Load(object sender, EventArgs e)
		{
            getcon();
        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            if (btnreg.Text == "Register")
            {
                getcon();
                cmd = new SqlCommand("INSERT INTO Admin_tbl(FullName,Email,Password)VALUES('" + txtfnm.Text + "','" + txteml.Text + "','" + txtpsw.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("index.aspx");
            }
        }
    }
}