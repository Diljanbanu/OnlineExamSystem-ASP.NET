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
	public partial class addSubject1 : System.Web.UI.Page
	{

        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;//container
        SqlConnection con;//connection
        SqlCommand cmd;//inser , update,delete
        DataSet ds;// run time container
        string fnm;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void imgupload()
        {
            if (fldsubimg.HasFile)
            {
                fnm = "~/image/" + fldsubimg.FileName;
                fldsubimg.SaveAs(Server.MapPath(fnm));
            }
        }

        void clear()
        {
            txtsnm.Text = "";
            txtdesc.Text = "";
        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Subject_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            gvSub.DataSource = ds;
            gvSub.DataBind();

        }
        void select()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Subject_tbl where Id='" + ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            //paring

            txtsnm.Text = ds.Tables[0].Rows[0][1].ToString();
            txtdesc.Text = ds.Tables[0].Rows[0][2].ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
		{
            getcon();
            fillgrid();
            imgupload();
		}

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "cmd_edt")
        //    {
        //        int id = Convert.ToInt16(e.CommandArgument);
        //        ViewState["id"] = id;
        //        btnsub.Text = "Update";
        //        select();
        //    }
        //    else if (e.CommandName == "cmd_dlt")
        //    {
        //        int id = Convert.ToInt32(e.CommandArgument);
        //        ViewState["id"] = id;
        //        getcon();
        //        cmd = new SqlCommand("DELETE FROM add_Subject_tbl WHERE Id='" + ViewState["id"] + "'", con);
        //        cmd.ExecuteNonQuery();
        //        fillgrid();
        //    }
        //}

        protected void btnsub_Click(object sender, EventArgs e)
        {
            if (btnsub.Text == "Add Subject")
            {
                getcon();
                imgupload();

                cmd = new SqlCommand("INSERT INTO add_Subject_tbl(SubjectName,Description,Image)VALUES('" + txtsnm.Text + "','" + txtdesc.Text + "','" + fnm + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("addExam.aspx");
            }
            else
            {
                cmd = new SqlCommand("UPDATE add_Subject_tbl SET SubjectName='" + txtsnm.Text + "',Description='" + txtdesc.Text +  "' WHERE Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                clear();
                btnsub.Text = "Save";
            }
        }

        

        protected void btnque_Click(object sender, EventArgs e)
        {

        }

        protected void drpexam_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

