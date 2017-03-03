using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class SignedIn : System.Web.UI.Page
    {
        String email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                email = Request.Cookies["username"].Value.ToString();
                CustomerModel cm = new CustomerModel();
                customer cust = cm.GetCustomer(email);
                
                emailText.Text = cust.customer_email;
                AddressTextbox.Text = cust.customer_address;
                FNTextbox.Text = cust.first_name;
                LNTextbox.Text = cust.last_name;
            }
        }

        protected void ValidateBtn_Click(object sender, EventArgs e)
        {
            String newEmail = emailText.Text;
            
            CustomerModel customerModel = new CustomerModel();
            customer cust = UpdateCustomer();
            lblResult.Text = customerModel.UpdateCustomer(newEmail,cust);

        }

        private customer UpdateCustomer()
        {
            customer cust = new customer();
            cust.customer_address = AddressTextbox.Text;
           
            cust.first_name = FNTextbox.Text;
            cust.last_name = LNTextbox.Text;
            return cust;
        }

        protected void Orderbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyOrders.aspx?email=" + Request.Cookies["username"].Value.ToString());
        }
    }
}