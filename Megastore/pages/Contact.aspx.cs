using Megastore.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string toAddress = YourEmail.Text.ToString();
                string adminEmail = "megastorehkr@gmail.com"; // send to admin and user
                string subject = YourSubject.Text.ToString();
                string body = "From: " + toAddress+ "\n";
                body += "Email: " + YourEmail.Text + "\n";
                body += "Subject: " + YourSubject.Text + "\n";
                body += "Question: \n" + Comments.Text + "\n";
                MailClass.MailSender(adminEmail, subject, body);
                MailClass.MailSender(toAddress, subject, body); //Copy to sender

                DisplayMessage.Text = "Your message has been forwarded. A copy has been sent to your email.";
                DisplayMessage.Visible = true;
                YourSubject.Text = "";
                YourEmail.Text = "";
                YourName.Text = "";
                Comments.Text = "";
            }
            catch (Exception) { }
        }
    }
}