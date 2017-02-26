using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        private void FillPage()
        {
            //Get selected product data
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                ProductModel model = new ProductModel();
                product product = model.GetProduct(id);

                //Fill page with data
                lblTitle.Text = product.product_name;
                lblDescription.Text = product.product_description;
                lblPrice.Text = "Price per unit:<br/> " + product.price_per_unit + " kr";
                imgProduct.ImageUrl = "~/Products/" + product.image_url;
                lblItemNr.Text = product.product_id.ToString();
                lblUnit.Text = product.unit.ToString();

                //Fill amount list with numbers 1-20
                int[] amount = Enumerable.Range(1, 20).ToArray();
                ddlAmount.DataSource = amount;
                ddlAmount.AppendDataBoundItems = true;
                ddlAmount.DataBind();
            }
        }

        protected void addToCart(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            ProductModel model = new ProductModel();
            product product = model.GetProduct(id);

            ArrayList tmpArrayList = (ArrayList)Session["cartList"];
            ArrayList cartList = new ArrayList();

            if (tmpArrayList == null)
            {
                cartList.Add(product);
            }
            else
            {
                cartList = tmpArrayList;
                cartList.Add(product);
            }

            Session["CartList"] = cartList;
        }
    }
}