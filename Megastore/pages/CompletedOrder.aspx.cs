using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class CompletedOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AddOrder();
        }

        public void AddOrder()
        {
            ArrayList cartList = (ArrayList)Session["cartList"];

            if(cartList != null) { 
            ShipmentModels sm = new ShipmentModels();
            CustomerModel cm = new CustomerModel();
            customer c = cm.GetCustomer(Request.Cookies["username"].Value.ToString());
            shipment s = new shipment();
            String billAddr = c.customer_address;
            String shipAddr = c.customer_address;
            int delCost = 0;
            int discount = 0;
            int calcTotal = (int)Calc_Total();
            int finalCost = delCost + calcTotal + discount;
            String email = c.customer_email;

            s.time_created = DateTime.UtcNow;
            s.billing_address = billAddr;
            s.shipping_address = shipAddr;
            s.delivery_cost = delCost;
            s.discount = 0;
            s.final_price = finalCost;
            s.customer_customer_email = email;
            s.payment_type_payment_type_id = 1;
            s.shipment_type_sipment_type_id = 1;
            statusLabel.Text = sm.CreateShipment(s) + "\n Check your orders in your profile.";
            Session["cartList"] = null;
            }
            else
            {
                statusLabel.Text = "ERROR: DID NOT ADD ORDER";
            }
        }

        protected decimal Calc_Total()
        {
            ArrayList cartList = (ArrayList)Session["cartList"];

            decimal temp = 0;
            try
            {

                for (int i = 0; i < cartList.Count; i++)
                {
                    product p = (product)cartList[i];
                    temp = temp + (decimal)p.price_per_unit;
                }

                return temp;
            }
            catch (Exception e)
            {

            }
            return 0;
        }
    }
}