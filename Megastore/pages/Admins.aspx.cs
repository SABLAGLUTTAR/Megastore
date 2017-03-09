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
            
           

                fillStatistics();
        
            
        }

        public void fillStatistics()
        {
            labelTotalUsers.Text = allCustomers();
            labelTotalProducts.Text = allProducts();
            labelTotalOrders.Text = allShipments();
            labelOrdersValue.Text = totalOrdersValue().ToString();
            
            
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

        public String allShipments()
        {
            ShipmentModels s = new ShipmentModels();
            List<shipment> shipList = s.GetAllShipments();
            string ship = shipList.Count.ToString();

            return ship;
        }

        public decimal totalOrdersValue()
        {
            decimal totalSum = 0;
            ShipmentModels s = new ShipmentModels();
            List<shipment> shipList = s.GetAllShipments();

            for (int i = 0; i < shipList.Count; i++)
            {
                shipment ship = shipList[i];
                totalSum = totalSum + (decimal)ship.final_price;
            }
            return totalSum;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RemoveSelected(object sender, GridViewDeleteEventArgs e)
        {
            

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String email = TextBoxEmail.Text;
            String fName = TextBoxFirstName.Text;
            String lName = TextBoxLastName.Text;
            String password = TextBoxPass.Text;

            AdminModels am = new AdminModels();
            admin a = new admin();
            a.email = email;
            a.first_name = fName;
            a.last_name = lName;
            a.admin_password = password;

            am.AddAdmin(a);

            TextBoxEmail.Text = "";
            TextBoxFirstName.Text = "";
            TextBoxLastName.Text = "";
            TextBoxPass.Text = "";

            




        }

        protected void AddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageProduct.aspx");
        }
    }
}