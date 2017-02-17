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
           
            //Spel
            if (Request.QueryString["category"].Equals("Games") || Request.QueryString["category"].Contains("games."))
            {
                testLabel.Text="Här kommer allt i games att hamna";
                if (Request.QueryString["category"].Equals("games.Fps"))
                {
                    testLabel.Text = "Här kommer allt i fps att hamna";
                }
                if (Request.QueryString["category"].Equals("games.Rpg"))
                {
                    testLabel.Text = "Här kommer allt i rpg att hamna";
                }
                if (Request.QueryString["category"].Equals("games.Strategy"))
                {
                    testLabel.Text = "Här kommer allt i strategi att hamna";
                }
            }

            //Smartphones
            if (Request.QueryString["category"].Equals("Smartphones") || Request.QueryString["category"].Contains("smartphones."))
            {
                testLabel.Text = "Här kommer allt i smartphones att hamna";
                if (Request.QueryString["category"].Equals("smartphones.Iphone"))
                {
                    testLabel.Text = "Här kommer allt i iphone att hamna";
                }
                if (Request.QueryString["category"].Equals("smartphones.Android"))
                {
                    testLabel.Text = "Här kommer allt i android att hamna";
                }
                if (Request.QueryString["category"].Equals("smartphones.Blackberry"))
                {
                    testLabel.Text = "Här kommer allt i blackberry att hamna";
                }

            }

            //Böcker
            if (Request.QueryString["category"].Equals("Books") || Request.QueryString["category"].Contains("books."))
            {
                testLabel.Text = "Här kommer allt i books att hamna";
                if (Request.QueryString["category"].Equals("books.Manga"))
                {
                    testLabel.Text = "Här kommer allt i manga att hamna";
                }
                if (Request.QueryString["category"].Equals("books.Children"))
                {
                    testLabel.Text = "Här kommer allt i children(books) att hamna";
                }
                if (Request.QueryString["category"].Equals("books.Thriller"))
                {
                    testLabel.Text = "Här kommer allt i thriller(books) att hamna";
                }
                

            }

            //Dator
            if (Request.QueryString["category"].Equals("Computers")|| Request.QueryString["category"].Contains("computers."))
            {
                testLabel.Text = "Här kommer allt i computers att hamna";

                if (Request.QueryString["category"].Equals("computers.Processor"))
                {
                    testLabel.Text = "Här kommer allt i processor att hamna";
                }

                if (Request.QueryString["category"].Equals("computers.Graphics"))
                {
                    testLabel.Text = "Här kommer allt i Graphics att hamna";
                }

                if (Request.QueryString["category"].Equals("computers.Ram"))
                {
                    testLabel.Text = "Här kommer allt i RAM att hamna";
                }

                if (Request.QueryString["category"].Equals("computers.Motherboard"))
                {
                    testLabel.Text = "Här kommer allt i motherboard att hamna";
                }

                if (Request.QueryString["category"].Equals("computers.Harddrive"))
                {
                    testLabel.Text = "Här kommer allt i hdd/ssd att hamna";
                }
            }

            //Filmer
            if (Request.QueryString["category"].Equals("Movies") || Request.QueryString["category"].Contains("movies."))
            {
                testLabel.Text = "Här kommer allt i Movies att hamna";

                if (Request.QueryString["category"].Equals("movies.Action"))
                {
                    testLabel.Text = "Här kommer allt i action att hamna";
                }

                if (Request.QueryString["category"].Equals("movies.Thriller"))
                {
                    testLabel.Text = "Här kommer allt i thriller(movies) att hamna";
                }

                if (Request.QueryString["category"].Equals("movies.Children"))
                {
                    testLabel.Text = "Här kommer allt i children(movies) att hamna";
                }
            }
        }
    }
}