using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            searchlabel.InnerText = "You searched for: "+ Request.QueryString["search"];
            string search =  Request.QueryString["search"];
            srch.Text = search.Trim();
        }

 
    }


}