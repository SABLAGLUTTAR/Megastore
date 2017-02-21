using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore
{
    public partial class LoginUser : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnAuthenticate(object sender, AuthenticateEventArgs e)
        {
            e.Authenticated = System.Web.Security.Membership.ValidateUser(Login1.UserName, Login1.Password);
            if (!e.Authenticated)
            {
                popup.Show();
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}