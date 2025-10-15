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
    public partial class Subject : System.Web.UI.Page
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

        // SUBJECT LIST LOAD
        void Subjects()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Subject_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            dlsub.DataSource = ds;
            dlsub.DataBind();
        }
        protected void dlsub_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_view")
            {
                string subId = e.CommandArgument.ToString();
                Exams(subId);
            }
        }

        // EXAMS BIND
        void Exams(string subId)
        {
            getcon();
            SqlCommand cmd = new SqlCommand("SELECT * FROM add_Exam_tbl WHERE SubId = (SELECT SubjectName FROM add_Subject_tbl WHERE Id = @Id)", con);
            cmd.Parameters.AddWithValue("@Id", subId);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                dlexam.DataSource = ds.Tables[0];
                dlexam.DataBind();
            }
            else
            {
                dlexam.DataSource = null;
                dlexam.DataBind();
            }

            ViewState["SubId"] = subId;

            pnlsub.Visible = false;
            pnlexam.Visible = true;
        }

        protected void dlexam_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_add")
            {
                getcon();
                da = new SqlDataAdapter("SELECT * FROM User_tbl WHERE Email='" + Session["user"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    int userid = Convert.ToInt32(ds.Tables[0].Rows[0]["Id"]);
                    int examid = Convert.ToInt32(e.CommandArgument);

                    da = new SqlDataAdapter("SELECT SubId FROM add_Exam_tbl WHERE ExamId='" + examid + "'", con);
                    ds = new DataSet();
                    da.Fill(ds);

                    if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                    {
                        string subname = ds.Tables[0].Rows[0]["SubId"].ToString();


                        DateTime AddedDate = DateTime.Now;

                        cmd = new SqlCommand("INSERT INTO add_MyExam_tbl(UserId,SubjectName,ExamId,AddedDate,Status)VALUES('" + userid + "','" + subname + "','" + examid + "','" + AddedDate + "','Pending')", con);
                        cmd.ExecuteNonQuery();

                    }
                   
                }
              
            }
            else if (e.CommandName == "cmd_attemp")
            {

                int examid = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("MCQ.aspx?examId=" + examid);
            }
        }

        protected void btnBackSub_Click(object sender, EventArgs e)
        {
            pnlsub.Visible = true;
            pnlexam.Visible = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
         
            if (!IsPostBack)
            {
                Subjects();
                pnlsub.Visible = true;
                pnlexam.Visible = false;
            }
        }
    }
}