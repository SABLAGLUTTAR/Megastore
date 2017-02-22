using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class SubCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["category"].Equals("Game"))
            {
                testLabel.Text = "Här kommer allt i games att hamna";
                if (Request.QueryString["subcat"] != null)
                {

                    if (Request.QueryString["subcat"].Equals("Fps"))
                    {
                        testLabel.Text = "Här kommer allt i fps att hamna";
                    }
                    if (Request.QueryString["subcat"].Equals("RPG"))
                    {
                        testLabel.Text = "Här kommer allt i rpg att hamna";
                    }
                    if (Request.QueryString["subcat"].Equals("Strategy"))
                    {
                        testLabel.Text = "Här kommer allt i strategi att hamna";
                    }
                }
            }

            //Smartphones
            if (Request.QueryString["category"].Equals("Smartphone"))
            {
                testLabel.Text = "Här kommer allt i smartphones att hamna";
                if (Request.QueryString["subcat"] != null)
                {
                    if (Request.QueryString["subcat"].Equals("Iphone"))
                    {
                        testLabel.Text = "Här kommer allt i iphone att hamna";
                    }
                    if (Request.QueryString["subcat"].Equals("Android"))
                    {
                        testLabel.Text = "Här kommer allt i android att hamna";
                    }
                    if (Request.QueryString["subcat"].Equals("Blackberry"))
                    {
                        testLabel.Text = "Här kommer allt i blackberry att hamna";
                    }
                }

            }

            //Böcker
            if (Request.QueryString["category"].Equals("Book"))
            {
                testLabel.Text = "Här kommer allt i books att hamna";

                if (Request.QueryString["subcat"] != null)
                {
                    if (Request.QueryString["subcat"].Equals("Manga"))
                    {
                        testLabel.Text = "Här kommer allt i manga att hamna";
                    }
                    if (Request.QueryString["subcat"].Equals("Children"))
                    {
                        testLabel.Text = "Här kommer allt i children(books) att hamna";
                    }
                    if (Request.QueryString["subcat"].Equals("Thriller"))
                    {
                        testLabel.Text = "Här kommer allt i thriller(books) att hamna";
                    }
                }

            }

            //Dator
            if (Request.QueryString["category"].Equals("Computer"))
            {

                testLabel.Text = "Här kommer allt i computers att hamna";
                if (Request.QueryString["subcat"] != null)
                {
                    if (Request.QueryString["subcat"].Equals("Processor"))
                    {
                        testLabel.Text = "Här kommer allt i processor att hamna";
                    }

                    if (Request.QueryString["subcat"].Equals("Graphics"))
                    {
                        testLabel.Text = "Här kommer allt i Graphics att hamna";
                    }

                    if (Request.QueryString["subcat"].Equals("Ram"))
                    {
                        testLabel.Text = "Här kommer allt i RAM att hamna";
                    }

                    if (Request.QueryString["subcat"].Equals("Motherboard"))
                    {
                        testLabel.Text = "Här kommer allt i motherboard att hamna";
                    }

                    if (Request.QueryString["subcat"].Equals("Harddrive"))
                    {
                        testLabel.Text = "Här kommer allt i hdd/ssd att hamna";
                    }
                }
            }

            //Filmer
            if (Request.QueryString["category"].Equals("Movie"))
            {
                testLabel.Text = "Här kommer allt i Movies att hamna";
                if (Request.QueryString["subcat"] != null)
                {

                    if (Request.QueryString["subcat"].Equals("Action"))
                    {
                        testLabel.Text = "Här kommer allt i action att hamna";
                    }

                    if (Request.QueryString["subcat"].Equals("Thriller"))
                    {
                        testLabel.Text = "Här kommer allt i thriller(movies) att hamna";
                    }

                    if (Request.QueryString["subcat"].Equals("Children"))
                    {
                        testLabel.Text = "Här kommer allt i children(movies) att hamna";
                    }
                }
            }
        }
    }
}