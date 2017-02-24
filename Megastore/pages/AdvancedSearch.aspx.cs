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
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            

            if (book.Checked)
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Book&name=%" +searchfield.Text+"%");
                
            }

            if (computer.Checked)
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Computer&name=%" + searchfield.Text + "%");
                

            }

            if (movie.Checked)
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Movie&name=%" + searchfield.Text + "%");
                
            }

            if (smartphone.Checked)
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Smartphone&name=%" + searchfield.Text + "%");
                
            }

            if (game.Checked)
            {
                
                Response.Redirect("AdvancedSearch.aspx?category=Game&name=%" + searchfield.Text + "%");
               
            }

        }
    }
}