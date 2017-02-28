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
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ValidateBtn_Click(object sender, EventArgs e)
        {
            String email = Request.Cookies["username"].Value;
            EmailTextbox.Text = email;
            CustomerModel customerModel = new CustomerModel();
            customer cust = UpdateCustomer();
            lblResult.Text = customerModel.UpdateCustomer(email,cust);

        }

        private customer UpdateCustomer()
        {
            customer cust = new customer();
            cust.customer_address = AddressTextbox.Text;
            
            cust.customer_email = EmailTextbox.Text;
            cust.first_name = FNTextbox.Text;
            cust.last_name = LNTextbox.Text;
            return cust;
        }
    }
}