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
            if (Request.QueryString["category"].Equals("Game"))
            {
                
                if (Request.QueryString["subcat"] != null)
                {
                    
                if (Request.QueryString["subcat"].Equals("Fps"))
                {
                    
                }
                if (Request.QueryString["subcat"].Equals("RPG"))
                {
                   
                }
                if (Request.QueryString["subcat"].Equals("Strategy"))
                {
                    
                }
                }
            }

            //Smartphones
            if (Request.QueryString["category"].Equals("Smartphone"))
            {
                
                if (Request.QueryString["subcat"] != null)
                {
                    if (Request.QueryString["subcat"].Equals("Iphone"))
                    {
                        
                    }
                    if (Request.QueryString["subcat"].Equals("Android"))
                    {
                        
                    }
                    if (Request.QueryString["subcat"].Equals("Blackberry"))
                    {
                        
                    }
                }

            }

            //Böcker
            if (Request.QueryString["category"].Equals("Book"))
            {
               

                if (Request.QueryString["subcat"] != null) { 
                if (Request.QueryString["subcat"].Equals("Manga"))
                {
                    
                }
                if (Request.QueryString["subcat"].Equals("Children"))
                {
                    
                }
                if (Request.QueryString["subcat"].Equals("Thriller"))
                {
                   
                }
                }

            }

            //Dator
            if (Request.QueryString["category"].Equals("Computer"))
            {
                 
                
                if (Request.QueryString["subcat"] != null)
                {
                    if (Request.QueryString["subcat"].Equals("Processor"))
                    {
                        
                    }

                    if (Request.QueryString["subcat"].Equals("Graphics"))
                    {
                        
                    }

                    if (Request.QueryString["subcat"].Equals("Ram"))
                    {
                        
                    }

                    if (Request.QueryString["subcat"].Equals("Motherboard"))
                    {
                       
                    }

                    if (Request.QueryString["subcat"].Equals("Harddrive"))
                    {
                        
                    }
                }
            }

            //Filmer
            if (Request.QueryString["category"].Equals("Movie"))
            {
               
                if (Request.QueryString["subcat"] != null)
                {

                    if (Request.QueryString["subcat"].Equals("Action"))
                    {
                       
                    }

                    if (Request.QueryString["subcat"].Equals("Thriller"))
                    {
                     
                    }

                    if (Request.QueryString["subcat"].Equals("Children"))
                    {
                       
                    }
                }
            }
        }

        
    }
}