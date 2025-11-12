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
	public partial class addFaculty : System.Web.UI.Page
	{
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter da;//container
        SqlConnection con;//connection
        SqlCommand cmd;//inser , update,delete
        DataSet ds;// run time container
        string fnm;

        //private CrystalDecisions.CrystalReports.Engine.ReportDocument cr = new CrystalDecisions.CrystalReports.Engine.ReportDocument();

        static string Crypath = "";

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void clear()
        {
            txtpnm.Text = "";
            txtdes.Text = "";
            txtsnm.Text = "";
            txtsex.Text = "";
        }

        void imgupload()
        {
            if (fldproimg.HasFile)
            {
                fnm = "~/image/" + fldproimg.FileName;
                fldproimg.SaveAs(Server.MapPath(fnm));
            }
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Faculty_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            gvFact.DataSource = ds;
            gvFact.DataBind();

        }
        void select()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Faculty_tbl where Id='" + ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            //paring

            txtpnm.Text = ds.Tables[0].Rows[0][1].ToString();
            txtdes.Text = ds.Tables[0].Rows[0][2].ToString();
            txtsnm.Text = ds.Tables[0].Rows[0][3].ToString();
            txtsex.Text = ds.Tables[0].Rows[0][4].ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack) // ફક્ત પ્રથમ વખત પેજ લોડ થાય ત્યારે
            {
                getcon();
                fillgrid();
                imgupload();
                clear();
            }
        }

        protected void btnPro_Click(object sender, EventArgs e)
        {
            if (btnPro.Text == "Add Faculties")
            {
                getcon();
                imgupload();

                cmd = new SqlCommand("INSERT INTO add_Faculty_tbl(Pro_Name,Description,Subject_Name,Subject_Expert,Image)VALUES('"+txtpnm.Text+"','"+txtdes.Text+"','"+txtsnm.Text+"','" + txtsex.Text + "','" + fnm + "')", con);
                cmd.ExecuteNonQuery();
                clear();
            }
            //else
            //{
            //    cmd = new SqlCommand("UPDATE add_Faculty_tbl SET Pro_Name='" + txtpnm.Text + "',Description='" + txtdes.Text + "', Subject_Name='" + txtsnm.Text + "',Subject_Expert='" + txtsex.Text + "' WHERE Id='" + ViewState["id"] + "'", con);
            //    cmd.ExecuteNonQuery();
            //    fillgrid();
            //   // btnPro.Text = "E";
            //}
        }

        protected void gvFact_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvFact_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("UPDATE add_Faculty_tbl SET Pro_Name='" + txtpnm.Text + "',Description='" + txtdes.Text + "', Subject_Name='" + txtsnm.Text + "',Subject_Expert='" + txtsex.Text + "' WHERE Id='" + ViewState["id"] + "'", con);
                fillgrid();
                cmd.ExecuteNonQuery();
             

              //  select();
            }
            else if (e.CommandName == "cmd_dlt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                getcon();
                cmd = new SqlCommand("DELETE FROM add_Faculty_tbl WHERE Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }
    }
}