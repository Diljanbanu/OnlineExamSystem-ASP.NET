﻿using System;
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
    public partial class MCQ : System.Web.UI.Page
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
        void LoadMCQs(string examId)
        {
            getcon();
            da = new SqlDataAdapter("SELECT mcqId, Question, OptionA, OptionB, OptionC, OptionD, CorrectAns FROM add_MCQ_tbl WHERE ExamId=@ExamId", con);
            da.SelectCommand.Parameters.AddWithValue("@ExamId", examId);

            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                dlmcq.DataSource = ds;
                dlmcq.DataBind();
                ViewState["MCQData"] = ds.Tables[0];
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["examId"] != null)
                {
                    string examId = Request.QueryString["examId"];
                    LoadMCQs(examId);
                }
                else
                {
                    lblResult.Text = "Invalid Exam!";
                    btnSubmit.Visible = false;
                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void dlmcq_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView drv = (DataRowView)e.Item.DataItem;
                RadioButtonList rbl = (RadioButtonList)e.Item.FindControl("rblOptions");

                rbl.Items.Add(new ListItem(drv["OptionA"].ToString(), "A"));
                rbl.Items.Add(new ListItem(drv["OptionB"].ToString(), "B"));
                rbl.Items.Add(new ListItem(drv["OptionC"].ToString(), "C"));
                rbl.Items.Add(new ListItem(drv["OptionD"].ToString(), "D"));
            }

        }

        protected void btnBackSub_Click(object sender, EventArgs e)
        {
            Response.Redirect("Subject.aspx");
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            int correct = 0;
            int wrong = 0;
            getcon();
            foreach (DataListItem item in dlmcq.Items)
            {
                RadioButtonList rbl = (RadioButtonList)item.FindControl("rblOptions");
                Label lblCorrect = (Label)item.FindControl("lblCorrect");

                string userAns = rbl.SelectedValue;          
                string correctAns = lblCorrect.Text.Trim(); 

                if (userAns == correctAns)
                    correct++;
                else
                    wrong++;
            }

            int total = correct + wrong;

            int score = correct * 1;

            lblResult.Text = $"Correct: {correct}, Wrong: {wrong}, Score: {score}/{total}";


        }
    }
}