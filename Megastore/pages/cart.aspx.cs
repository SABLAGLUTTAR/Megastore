using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AddToGridView();
            Calc_Total();
        }

        protected void AddToGridView()
        {
            ArrayList cartList = (ArrayList)Session["cartList"];

                //productName, description, unit, price

            /*
            for(int i = 0; i < cartList.Count; i++)
            {
                product p = (product)cartList[i];
                String pNameTemp = p.product_name;
                String descTemp = p.product_description;
                String unitTemp = p.unit;

                productName.Text = pNameTemp;
                description.Text = descTemp;
                unit.Text = unitTemp;
            }
            */

            CartGrid.DataSource = cartList;
            CartGrid.DataBind();

        }

        protected void RemoveSelected(object sender, GridViewDeleteEventArgs e)
        {
            ArrayList cartList = (ArrayList)Session["cartList"];

            GridViewRow row = (GridViewRow)CartGrid.Rows[e.RowIndex];

            //String name = (string)CartGrid.DataKeys[e.RowIndex].Value;
            String name = CartGrid.SelectedRow.Cells[0].Text;

            foreach (product p in cartList)
            {
                if (p.product_name.Equals(name))
                {
                    cartList.Remove(p);
                }
            }

            CartGrid.DataBind();
        }

        protected void Calc_Total()
        {
            ArrayList cartList = (ArrayList)Session["cartList"];

            decimal temp = 0;

            for (int i = 0; i < cartList.Count; i++)
            {
                product p = (product)cartList[i];
                temp = temp + (decimal)p.price_per_unit;
            }

            totalSum.Text = Convert.ToString(temp);
        }
    }
}