using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class AdvancedSearch : System.Web.UI.Page
    {
        string category;
        protected void Page_Load(object sender, EventArgs e)
        {
            // So category stays the same as selected
            if (!Page.IsPostBack)
            {
                
                category = Request.QueryString["category"];
                ddlSubject.SelectedValue = category;
            }
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
           
            if (ddlSubject.SelectedItem.ToString().Trim() == "Book")
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Book&name=%" +searchfield.Text+"%");
                
            }

            

            if (ddlSubject.SelectedItem.ToString().Trim() == "Computer")
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Computer&name=%" + searchfield.Text + "%");
                

            }

            if (ddlSubject.SelectedItem.ToString().Trim() == "Movie")
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Movie&name=%" + searchfield.Text + "%");
                
            }

            if (ddlSubject.SelectedItem.ToString().Trim() == "Smartphone")
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Smartphone&name=%" + searchfield.Text + "%");
                
            }

            if (ddlSubject.SelectedItem.ToString().Trim() == "Game")
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Game&name=%" + searchfield.Text + "%");
                
            }

            

        }
    }
}