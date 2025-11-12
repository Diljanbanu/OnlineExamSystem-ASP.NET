using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebUni_Project.user
{
	public partial class Contact : System.Web.UI.Page
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

        void clear()
        {
            txtnm.Text = "";
            txteml.Text = "";
            txtsub.Text = "";
            txtmsg.Text = "";
        }
        void select()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Contact_tbl WHERE Id='" + ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            //paring

            txtnm.Text = ds.Tables[0].Rows[0][1].ToString();
            txteml.Text = ds.Tables[0].Rows[0][2].ToString();
            txtsub.Text = ds.Tables[0].Rows[0][3].ToString();
            txtmsg.Text = ds.Tables[0].Rows[0][3].ToString();
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Contact_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
        }
        protected void Page_Load(object sender, EventArgs e)
		{
            getcon();
            fillgrid();

        }

        protected void btncon_Click(object sender, EventArgs e)
        {
            if (btncon.Text == "Sent Message")
            {
                getcon();
                cmd = new SqlCommand("INSERT INTO Contact_tbl(Name,Email,Subject,Message)VALUES('" + txtnm.Text + "','" + txteml.Text + "','" + txtsub.Text + "','" + txtmsg.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
            }
            //else
            //  {
            //      cmd = new SqlCommand("UPDATE stu_tbl SET Name='" + txtnm.Text + "',Gender='" + rdbgen.Text + "',Email='" + txteml.Text + "',City='" + drpct.SelectedValue + "',Password='" + txtpass.Text + "' WHERE Id='" + ViewState["id"] + "'", con);
            //      cmd.ExecuteNonQuery();
            //      fillgrid();
            //      clear();
            //      Button1.Text = "Save";
            //  }

        }

    }
}
