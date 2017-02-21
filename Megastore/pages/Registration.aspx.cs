using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ValidateBtn_Click(object sender, EventArgs e)
        {


        }



        protected void ResetButton_Click(object sender, EventArgs e)
        {
            EmailTextbox.Text = "";
            PasswordTextbox.Text = "";
            FNTextbox.Text = "";
            LNTextbox.Text = "";
            AddressTextbox.Text = "";
        }
    }

}
