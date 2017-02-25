using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["true"] != null)
                {
                    //Response.Redirect("SignedIn.aspx", true);
                    LoginView1.Visible = false;
                    LinkButton1.Visible = true;
                    
                }
            }
        }


        protected void button_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchResult.aspx?search=" + "%" + searchBox.Text + "%");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Cookies["true"].Expires = DateTime.Now.AddDays(-1);
            LoginView1.Visible = true;
            LinkButton1.Visible = false;
        }
    }
}