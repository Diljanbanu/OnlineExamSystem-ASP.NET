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
	public partial class dashboard : System.Web.UI.Page
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
       
        protected void Page_Load(object sender, EventArgs e)
		{
           
        }
	}
}