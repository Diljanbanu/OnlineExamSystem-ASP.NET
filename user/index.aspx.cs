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
	public partial class Index : System.Web.UI.Page
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

        // Faculty List
        void Faculty()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_Faculty_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            dlfact.DataSource = ds;
            dlfact.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
		{

            if (!IsPostBack)
            {
                Faculty();
            }
        }
	}
}