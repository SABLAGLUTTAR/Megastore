﻿using System;
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
            // Gmail Address from where you send the mail
            var fromAddress = "megastorehkr@gmail.com";
            // any address where the email will be sending
            var toAddress = YourEmail.Text.ToString();
            //Password of your gmail address
            const string fromPassword = "Asdasd123";
            // Passing the values and make a email formate to display
            string subject = "Password Recovery";
            string body = "Your password is " + password;
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            email = YourEmail.Text;
            CustomerModel cm = new CustomerModel();
            customer cust = cm.GetCustomer(email);


            if (cust != null)
            {
                password = cust.customer_password;
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
