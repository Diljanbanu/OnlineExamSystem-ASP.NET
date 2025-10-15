using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace WebUni_Project.admin
{
	public partial class addQuestion : System.Web.UI.Page
	{
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;//container
        SqlConnection con;//connection
        SqlCommand cmd;//inser , update,delete
        DataSet ds;// run time container

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void clear()
        {
            txtque.Text = "";
            txta.Text = "";
            txtb.Text = "";
            txtc.Text = "";
            txtd.Text = "";
        

        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter(
                @"SELECT mcq.mcqId, s.SubjectName, e.ExamName, mcq.Question, 
                 mcq.OptionA, mcq.OptionB, mcq.OptionC, mcq.OptionD, mcq.CorrectAns, mcq.CreatedDate
          FROM add_MCQ_tbl mcq
          INNER JOIN add_Subject_tbl s ON mcq.SubId = s.Id
          INNER JOIN add_Exam_tbl e ON mcq.ExamId = e.ExamId", con);

            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


        void select()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_MCQ_tbl where mcqId='" + ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            //paring
            //drpsub.SelectedValue = ds.Tables[0].Rows[0]["SubId"].ToString();
            //drpexam.SelectedValue = ds.Tables[0].Rows[0]["ExamId"].ToString();
            txtque.Text = ds.Tables[0].Rows[0]["Question"].ToString();
            txta.Text = ds.Tables[0].Rows[0]["OptionA"].ToString();
            txtb.Text = ds.Tables[0].Rows[0]["OptionB"].ToString();
            txtc.Text = ds.Tables[0].Rows[0]["OptionC"].ToString();
            txtd.Text = ds.Tables[0].Rows[0]["OptionD"].ToString();
            drpCorrect.SelectedValue = ds.Tables[0].Rows[0]["CorrectAns"].ToString();
        }
        void fillcategory()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Subject_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            drpsub.Items.Clear();
            drpsub.Items.Add(new ListItem("--Select Subject--", "0"));

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpsub.Items.Add(new ListItem(
                    ds.Tables[0].Rows[i]["SubjectName"].ToString(),
                    ds.Tables[0].Rows[i]["Id"].ToString()
                ));
            }
        }

        protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                fillcategory(); 
                drpexam.Items.Clear();
                drpexam.Items.Add(new ListItem("--Select Exam--", "0"));
                fillgrid();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                getcon();
                btnque.Text = "Update";
                select();
            }
            else if (e.CommandName == "cmd_dlt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                getcon();
                cmd = new SqlCommand("DELETE FROM add_MCQ_tbl WHERE mcqId='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        protected void btnque_Click(object sender, EventArgs e)
        {

            if (btnque.Text == "Add Question")
            {
                getcon();
                cmd =new SqlCommand("insert into add_MCQ_tbl( SubId,ExamId, Question, OptionA, OptionB, OptionC, OptionD, CorrectAns)values('" + drpsub.SelectedValue + "','" + drpexam.SelectedValue + "','" + txtque.Text + "','" + txta.Text + "','" + txtb.Text + "','" + txtc.Text + "','" + txtd.Text + "','"+drpCorrect.SelectedValue+"')",con);
                cmd.ExecuteNonQuery();

                clear();
                fillgrid();
            }
            else 
            {
                getcon();
                cmd = new SqlCommand("UPDATE add_MCQ_tbl SET Question='" + txtque.Text + "',OptionA='" + txta.Text + "',OptionB='" + txtb.Text + "',OptionC='" + txtc.Text + "',OptionD='" + txtd.Text + "',CorrectAns='" + drpCorrect.SelectedValue + "' WHERE mcqId='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                clear();
                fillgrid();
                btnque.Text = "Add Question";
            }

        }

        protected void drpexam_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void drpsub_SelectedIndexChanged(object sender, EventArgs e)
        {
            string subName = drpsub.SelectedItem.Text; 

            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Exam_tbl WHERE SubId = '" + subName + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            drpexam.Items.Clear();
            drpexam.Items.Add(new ListItem("--Select Exam--", "0"));

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpexam.Items.Add(new ListItem(
                    ds.Tables[0].Rows[i]["ExamName"].ToString(),
                    ds.Tables[0].Rows[i]["ExamId"].ToString()
                ));
            }
        }

    }
  }
