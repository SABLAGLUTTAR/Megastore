using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore
{
    public partial class LoginUser : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Login1.UserNameLabelText = "E-mail: ";
            Login1.TitleText = "";
            Login1.LoginButtonType = ButtonType.Link;
            Login1.BorderPadding.Equals(150);
            Login1.PasswordRecoveryUrl = "pages/PasswordRecovery.aspx";
            Login1.PasswordRecoveryText = "Password recovery";
            Login1.PasswordRequiredErrorMessage = "Please enter password!";
            Login1.DisplayRememberMe = false;


        }

        protected void OnAuthenticate(object sender, AuthenticateEventArgs e)
        {

            string connStr = ConfigurationManager.ConnectionStrings["dataConn"].ToString();
            using (MySql.Data.MySqlClient.MySqlConnection con = new MySql.Data.MySqlClient.MySqlConnection(connStr))
            {
                
                string username = Login1.UserName.ToString();
                string password = Login1.Password.ToString();
                MySql.Data.MySqlClient.MySqlCommand cmd = new MySql.Data.MySqlClient.MySqlCommand("select * from customer where customer_email like @username and customer_password = @password;");
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Connection = con;
                con.Open();
                System.Data.DataSet ds = new System.Data.DataSet();
                MySql.Data.MySqlClient.MySqlDataAdapter da = new MySql.Data.MySqlClient.MySqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();

                bool loginSuccessful = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));

                if (loginSuccessful)
                {
                    Response.Cookies["true"].Value = "true";
                    Response.Cookies["true"].Expires = DateTime.Now.AddDays(1);
                    Response.Cookies["username"].Value = username;
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(1);
                    
                    Response.Redirect("Index.aspx", true);
                    Login1.Visible = false;


                }
                else
                {
                    Response.Redirect("PasswordRecovery.aspx", true);
                }


            }

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}