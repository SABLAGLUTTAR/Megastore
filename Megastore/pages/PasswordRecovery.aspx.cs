using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class PasswordRecovery : System.Web.UI.Page
    {
        string email;
        string password;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void SendMail()
        {
            // any address where the email will be sending
            var toAddress = YourEmail.Text.ToString();
            // Passing the values 
            string subject = "Password Recovery";
            string body = "Your password is " + password;
            MailClass.MailSender(toAddress, subject, body);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            email = YourEmail.Text;
            CustomerModel cm = new CustomerModel();
            customer cust = cm.GetCustomer(email);


            if (cust != null)
            {
                password = cust.customer_password;
                DisplayMessage.Text = "Password sent to your email!";
                DisplayMessage.Visible = true;
                SendMail();
            }

            else
            {
                DisplayMessage.Text = "Email not found!";
                DisplayMessage.Visible = true;
            }
        }

    }
}
