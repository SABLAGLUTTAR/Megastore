using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ValidateBtn_Click(object sender, EventArgs e)
        {

            CustomerModel customerModel = new CustomerModel();
            customer cust = CreateCustomer();
            lblResult.Text = customerModel.InsertCustomer(cust);
            
}

        private customer CreateCustomer()
        {
            customer cust = new customer();
             cust.customer_address= AddressTextbox.Text;
            cust.customer_password = PasswordTextbox.Text;
            cust.customer_email = EmailTextbox.Text;
            cust.first_name = FNTextbox.Text;
            cust.last_name = LNTextbox.Text;
            return cust;
        }


        protected void ResetButton_Click(object sender, EventArgs e)
        {
            EmailTextbox.Text = "";
            PasswordTextbox.Text = "";
            FNTextbox.Text = "";
            LNTextbox.Text = "";
            AddressTextbox.Text = "";
        }
    }

}
