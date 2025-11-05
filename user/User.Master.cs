using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;


namespace WebUni_Project.user
{
	public partial class User : System.Web.UI.MasterPage
	{
        protected PlaceHolder phAnonymous;
        protected PlaceHolder phAuthenticated;
        protected LinkButton lnkUserInitial;
        protected Label lblUserInitial;
        protected Label lblUsernameDisplay;
        protected LinkButton btnLogout;
        protected void Page_Load(object sender, EventArgs e)
		{
            if (Context.User.Identity.IsAuthenticated)
            {
                // લોગિન થયેલ હોય તો
                phAnonymous.Visible = false; // Register છુપાવો
                phAuthenticated.Visible = true; // Profile મેનૂ દર્શાવો

                string username = Context.User.Identity.Name;

                // જો FormsAuthentication માં email/username નો ઉપયોગ થતો હોય તો
                // યુઝરનામનો પહેલો અક્ષર મેળવો
                if (!string.IsNullOrEmpty(username))
                {
                    lblUserInitial.Text = username.Substring(0, 1).ToUpper();
                    lblUsernameDisplay.Text = username;
                }
                else
                {
                    lblUserInitial.Text = "U";
                    lblUsernameDisplay.Text = "User";
                }
            }
            else
            {
                // લોગિન ન થયેલ હોય તો
                phAnonymous.Visible = true; // Register દર્શાવો
                phAuthenticated.Visible = false; // Profile મેનૂ છુપાવો
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Forms Authentication નો ઉપયોગ કરીને લોગઆઉટ કરો
            FormsAuthentication.SignOut();

            // તમામ સેશન સાફ કરો
            Session.Clear();
            Session.Abandon();

            // Login પેજ પર રીડાયરેક્ટ કરો
            Response.Redirect("~/user/login.aspx"); // તમારા Login પેજના Path મુજબ બદલો
        }
    }
}