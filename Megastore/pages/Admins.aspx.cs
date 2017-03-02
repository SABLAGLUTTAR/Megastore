using System;
using System.Collections;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class Admins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                labelTotalUsers.Text = allCustomers();
                labelTotalProducts.Text = allProducts();
            }
        }

        public String allCustomers()
        {
            CustomerModel c = new CustomerModel();
            List<customer> custList = c.GetAllCustomers();
            string cust = custList.Count.ToString();

            return cust;
        }

        public String allProducts()
        {
            ProductModel p = new ProductModel();
            List<product> prodList = p.GetAllProducts();
            string prod = prodList.Count.ToString();

            return prod;
        }

       /* public String allShipments()
        {
            
            List<shipment> shipList = a.Add
            string ship = prodList.Count.ToString();

            return ship;
        }
        */

    }
}