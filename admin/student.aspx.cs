﻿using System;
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
	public partial class student : System.Web.UI.Page
	{
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlCommand cmd;
        SqlConnection con;
        DataSet ds;
        IDataAdapter da;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }


        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM User_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        void select()
        {

        }
        protected void Page_Load(object sender, EventArgs e)
		{
            getcon();
            fillgrid();
        }
	}
}