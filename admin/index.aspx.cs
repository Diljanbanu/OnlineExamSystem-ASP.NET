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
            //if (txteml.Text != null && txtpsw.Text != null)
            //{
            //    getcon();
            //    cmd = new SqlCommand("select count(*) from Admin_tbl where Email='" + txteml.Text + "' and Password='" + txtpsw.Text + "'", con);

            //    i = Convert.ToInt32(cmd.ExecuteScalar());
            //    //clear();

            //    if (i > 0)
            //    {
            //        Session["user"] = txteml.Text;
            //        Response.Redirect("dashboard.aspx");

            //    }
            //    //else if (txtunm.Text == "diljaanumretiya@gmail.com" && txtpass.Text == "diljan123")
            //    //{
            //    //    Session["user"] = txtunm.Text;
            //    //    Response.Redirect("admin/index.aspx");

            //    //}
            //}
            //else
            //{
            //    Response.Write("<script>alert('Invalid Email or Password')</script>");
            //}
            if (txteml.Text != null && txtpsw.Text != null)
            {

                // ===============================================
                // 👉 અહીં ડેટાબેઝ કોડને કોમેન્ટ કરેલો છે:
                // ===============================================
                /*
                getcon();
                cmd = new SqlCommand("select count(*) from Admin_tbl where Email='" + txteml.Text + "' and Password='" + txtpsw.Text + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());
                */
                // ===============================================
                // હવે i ને 0 પર સેટ કરો જેથી ડેટાબેઝની શરત (i > 0) કામ ન કરે.
                i = 0;

                // clear(); 

                // -----------------------------------------------
                // 👉 Static Login Value માટેની મુખ્ય શરત:
                // -----------------------------------------------

                // તમે અહીં તમારા static Email અને Password ઉમેરી શકો છો
                if (txteml.Text == "admin@gmail.com" && txtpsw.Text == "admin123")
                {
                    Session["user"] = txteml.Text;
                    Response.Redirect("dashboard.aspx");
                }

                // જો તમે ડેટાબેઝ કોડ રાખવા માંગતા હો, તો તમે i > 0 ની શરત પણ રાખી શકો છો.
                else if (i > 0) // આ શરત હવે ડેટાબેઝ કોડ કોમેન્ટ હોવાથી કામ કરશે નહીં
                {
                    Session["user"] = txteml.Text;
                    Response.Redirect("dashboard.aspx");
                }

                // -----------------------------------------------
                // જો Static અને Database બંનેમાં મેચ ન થાય, તો આ else બ્લોક ચાલશે
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password')</script>");
            }

            //if (txteml.Text == "diljanumretiya@gmail.com" && txtpsw.Text == "diljan123" || txteml.Text == "bnarola@gmail.com" && txtpsw.Text == "bhakti123")
            //{
            //    Session["user"] = txteml.Text;
            //    Response.Redirect("dashboard.aspx");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Invalid Email or Password')</script>");
            //}
        }
    }
}