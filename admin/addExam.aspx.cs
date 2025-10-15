using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUni_Project.admin
{
	public partial class addExam1 : System.Web.UI.Page
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
            txtenm.Text = "";
            txtdr.Text = "";
            txttm.Text = "";

        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Exam_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        void select()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Exam_tbl where ExamId='" + ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            //paring

            txtenm.Text = ds.Tables[0].Rows[0][2].ToString();
            txtdr.Text = ds.Tables[0].Rows[0][3].ToString();
            txttm.Text = ds.Tables[0].Rows[0][4].ToString();
        }

        void fillcategory()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Subject_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpsub.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }


        }
        protected void Page_Load(object sender, EventArgs e)
		{
            getcon();
            fillgrid();
            if (!IsPostBack)
            {
                fillcategory();
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                btnexam.Text = "Update";
                select();
            }
            else if (e.CommandName == "cmd_dlt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                getcon();
                cmd = new SqlCommand("DELETE FROM add_Exam_tbl WHERE ExamId='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        protected void btnexam_Click(object sender, EventArgs e)
        {
            if (btnexam.Text == "Add Exam")
            {
                getcon();
              
                cmd = new SqlCommand("INSERT INTO add_Exam_tbl(SubId,ExamName,Duration,TotalMarks)VALUES('"+drpsub.SelectedValue+"','" + txtenm.Text + "','" + txtdr.Text + "','" + txttm.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("addExam.aspx");
            }
            //else
            //{
            //    cmd = new SqlCommand("UPDATE add_Exam_tbl SET  SubId='"+drpsub.SelectedValue+"',ExamName='"+ txtenm.Text + "',Duration='"+txtdr.Text+"',TotalMarks='"+txttm+"'  WHERE Id='" + ViewState["id"] + "'", con);
            //    cmd.ExecuteNonQuery();
            //    fillgrid();
            //    clear();
            //    btnexam.Text = "Save";
            //}
        }

        protected void drpsub_SelectedIndexChanged(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM add_Subject_tbl WHERE SubjectName ='" + drpsub.SelectedItem.ToString() + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            ViewState["id"] = Convert.ToInt32(ds.Tables[0].Rows[0][0]);

        }
    }
}