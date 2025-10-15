using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace WebUni_Project.user
{
	public partial class MyExam : System.Web.UI.Page
	{
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;//container
        SqlConnection con;//connection
        SqlCommand cmd;//inser , update,delete
        DataSet ds;// run time container
        string fnm;
        int p, row;
        PagedDataSource pg = new PagedDataSource();

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        //void fillgrid()
        //{
        //    getcon();
        //    da = new SqlDataAdapter("SELECT * FROM User_tbl WHERE Email='" + Session["user"] + "'", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();
        //}

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT Id FROM User_tbl WHERE Email='" + Session["user"].ToString() + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                string userId = ds.Tables[0].Rows[0]["Id"].ToString();

                SqlDataAdapter daExam = new SqlDataAdapter("SELECT Id, SubjectName, ExamId, AddedDate, Status FROM add_MyExam_tbl WHERE UserId='" + userId + "'", con);
                DataSet dsExam = new DataSet();
                daExam.Fill(dsExam);

                GridView1.DataSource = dsExam; 
                GridView1.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
		{
            getcon();
            if (Session["user"] != null) 
            {
                fillgrid();
            }
            else
            {
                 Response.Redirect("login.aspx");
            }
            //fillgrid();
		}

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            getcon();
            da=new SqlDataAdapter("select * from User_tbl where Id='" + Session["uid"].ToString() + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            // cmd = new SqlCommand("UPDATE add_MyExam_tbl SET ", con);
            //cmd = new SqlCommand("UPDATE stu_tbl SET Name='" + txtnm.Text + "',Gender='" + rdbgen.Text + "',Email='" + txteml.Text + "',City='" + drpct.SelectedValue + "',Password='" + txtpass.Text + "' WHERE Id='" + ViewState["id"] + "'", con);
            fillgrid();
        }
    }
}