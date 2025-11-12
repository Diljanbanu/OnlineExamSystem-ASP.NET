using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace WebUni_Project.user
{
	public partial class login : System.Web.UI.Page
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
            txtunm.Text = "";
            txtpass.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
		{
            //if (Session["User"].ToString()!="")
            //{
            //    getcon();
            //    da=new SqlDataAdapter("SElect * from User_tbl where Email='" + Session["user"] +"'",con);
            //    ds=new DataSet();
            //    da.Fill(ds);

            //    int uid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            //    string s= ds.Tables[0].Rows[0][1].ToString();

            //}


            if (Session["UserId"] != null)
            {
                // Already logged in → direct profile page પર મોકલો
                Response.Redirect("Profile.aspx");
            }

        }

        protected void btnlog_Click(object sender, EventArgs e)
        {

            //if (txtunm.Text != null && txtpass.Text != null)
            //{
            //    getcon();
            //    cmd = new SqlCommand("select count(*) from User_tbl where Email='" + txtunm.Text + "' and Password='" + txtpass.Text + "'", con);

            //    i = Convert.ToInt32(cmd.ExecuteScalar());
            //    //clear();

            //    if (i > 0) 
            //    {
            //        Session["user"] = txtunm.Text;
            //        Response.Redirect("index.aspx");

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


            if (txtunm.Text != null && txtpass.Text != null)
            {
                getcon();

                // 🛑 અહીં મુખ્ય ફેરફાર છે: હવે આપણે ડેટા ખેંચી રહ્યા છીએ 🛑
                // ક્વેરી: UserID અને FullName સાથે યુઝરનો આખો રેકોર્ડ ખેંચો
                string query = "SELECT ID, FullName FROM User_tbl WHERE Email=@Email AND Password=@Password";

                // SqlDataAdapter નો ઉપયોગ કરીને ડેટા ખેંચો
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", txtunm.Text);
                cmd.Parameters.AddWithValue("@Password", txtpass.Text);

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                con.Close(); // કનેક્શન બંધ કરો

                // i = Convert.ToInt32(cmd.ExecuteScalar()); વાપરવાને બદલે, ડેટા મળ્યો કે નહીં તે તપાસો:
                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    // 🛑 Master Page માટે જરૂરી સેશન સેટ કરો (SET SESSION FOR MASTER PAGE) 🛑

                    // Master Page needs 'UserName' to display the initial (Master Page ને પ્રારંભિક અક્ષર માટે 'UserName' ની જરૂર છે)
                    string fullName = ds.Tables[0].Rows[0]["FullName"].ToString();

                    // Master Page માટે જરૂરી સેશન વેરિયેબલ સેટ કરો: FullName ના બદલે UserName વાપરો
                    Session["UserName"] = fullName;

                    // યુઝર ID પણ સેટ કરો (Set the User ID)
                    Session["UserID"] = ds.Tables[0].Rows[0]["ID"].ToString();

                    // જો તમને જુની Session["user"] ની જરૂર હોય તો:
                    Session["user"] = txtunm.Text;

                    clear();
                    Response.Redirect("~/index.aspx"); // Successful login → Redirect to the Home Page
                }
                else
                {
                    // Invalid credentials (ખોટું ઇમેઇલ અથવા પાસવર્ડ)
                    // Note: Use a better method than Response.Write for error messages in a production app.
                    Response.Write("<script>alert('Invalid Email or Password')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter Email and Password')</script>");
            }

        }
    }
}