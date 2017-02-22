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
            Login1.UserNameLabelText = "E-mail: ";
            Login1.RememberMeText = "Remember me";
            Login1.TitleText = "";
            Login1.BorderPadding.Equals(150);
            Login1.PasswordRecoveryUrl = "pages/Registration.aspx";
            Login1.PasswordRecoveryText = "Password recovery";
            Login1.PasswordRequiredErrorMessage = "Please enter password!";
        }

        protected void OnAuthenticate(object sender, AuthenticateEventArgs e)
        {
            

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}