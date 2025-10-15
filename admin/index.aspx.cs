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
	public partial class index1 : System.Web.UI.Page
	{
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;//container
        SqlConnection con;//connection
        SqlCommand cmd;//inser , update,delete
        DataSet ds;// run time container
        string fnm;
        int i;


        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void clear()
        {
            txteml.Text = "";
            txtpsw.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
		{
            getcon();
        }

        protected void btnlog_Click(object sender, EventArgs e)
        {
            if (txteml.Text != null && txtpsw.Text != null)
            {
                getcon();
                cmd = new SqlCommand("select count(*) from Admin_tbl where Email='" + txteml.Text + "' and Password='" + txtpsw.Text + "'", con);

                i = Convert.ToInt32(cmd.ExecuteScalar());
                //clear();

                if (i > 0)
                {
                    Session["user"] = txteml.Text;
                    Response.Redirect("dashboard.aspx");

                }
                //else if (txtunm.Text == "diljaanumretiya@gmail.com" && txtpass.Text == "diljan123")
                //{
                //    Session["user"] = txtunm.Text;
                //    Response.Redirect("admin/index.aspx");

                //}
            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password')</script>");
            }
        }
    }
}