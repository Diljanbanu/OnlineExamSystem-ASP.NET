using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebUni_Project.user
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
            txtmbl.Text = "";
            txtpsw.Text = "";
        }


        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM User_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
        }
        protected void Page_Load(object sender, EventArgs e)
		{
            getcon();
            fillgrid();
        }
        protected void btnreg_Click(object sender, EventArgs e)
        {
            if(btnreg.Text== "Registrations")
            {
                getcon();
                cmd = new SqlCommand("INSERT INTO User_tbl(FullName,Email,MobileNo,Gender,Password)VALUES('"+txtfnm.Text+"','"+txteml.Text+"','"+txtmbl.Text+"','"+drpgen.SelectedValue+"','"+txtpsw.Text+"')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("login.aspx");
            }
            //else
            //{
            //    cmd = new SqlCommand("UPDATE stu_tbl SET Name='" + txtnm.Text + "',Gender='" + rdbgen.Text + "',Email='" + txteml.Text + "',City='" + drpct.SelectedValue + "',Password='" + txtpass.Text + "' WHERE Id='" + ViewState["id"] + "'", con);
            //    cmd.ExecuteNonQuery();
            //    fillgrid();
            //    clear();
            //    Button1.Text = "Save";
            //}
        }
    }
}