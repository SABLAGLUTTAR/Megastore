using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages.store
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Request.QueryString["category"].Equals("Games")){
                testLabel.Text="Här kommer allt i games att hamna";
            }

            if (Request.QueryString["category"].Equals("Smartphones"))
            {
                testLabel.Text = "Här kommer allt i smartphones att hamna";
            }
            if (Request.QueryString["category"].Equals("Books"))
            {
                testLabel.Text = "Här kommer allt i books att hamna";
            }
            if (Request.QueryString["category"].Equals("Computers"))
            {
                testLabel.Text = "Här kommer allt i computers att hamna";
            }
        }
    }
}