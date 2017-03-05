using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

namespace Megastore.pages
{
    public class MailClass
    {
        internal static void MailSender(string toAddress, string subject, string body)
        {
            // Gmail Address from where you send the mail
            string fromAddress = "megastorehkr@gmail.com";
            //Password of your gmail address
            const string fromPassword = "Asdasd123";


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
    }
}