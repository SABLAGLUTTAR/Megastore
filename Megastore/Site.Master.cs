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
                    
                    string name = Request.Cookies["username"].Value.ToString();
                    //Response.Redirect("SignedIn.aspx", true);
                    LoginView1.Visible = false;
                    LinkButton1.Visible = true;
                    Welcome.Visible = true;
                    Welcome.Text = "Welcome " + name;
                }
                
            }
        }


        protected void button_Click(object sender, EventArgs e)
        {
            if(searchBox.Text != "")
            {
                Response.Redirect("SearchResult.aspx?search=" + "%" + searchBox.Text + "%");
            }            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Cookies["true"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
            LoginView1.Visible = true;
            LinkButton1.Visible = false;
            Welcome.Visible = false;
            Response.Redirect("Index.aspx");
        }

        protected void Welcome_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignedIn.aspx", true);
            
        }

      
    }
}