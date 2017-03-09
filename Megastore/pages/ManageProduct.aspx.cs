using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Megastore.pages
{
    public partial class ManageProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && !string.IsNullOrWhiteSpace(Request.QueryString["Id"])) { 
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            ProductModel pm = new ProductModel();
            product p = new product();
            p = pm.GetProduct(id);

            IdBox.Text = p.product_id.ToString();
            TitleBox.Text = p.product_name;
            DescBox.Text = p.product_description;
            UnitBox.Text = p.unit;
            PriceBox.Text = p.price_per_unit.ToString();
            ImageBox.Text = p.image_url;
            CatList.SelectedIndex = p.categories_catogories_id -1;
            TypeList.SelectedIndex = p.product_type_idproduct_type -1;
            }
        }

        protected void ValidateBtn_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Request.QueryString["Id"])) { 
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            ProductModel pm = new ProductModel();
            product p = UpdateProduct();
            resLbl.Text = pm.UpdateProduct(id,p);
            }
            else
            {
                ProductModel pm = new ProductModel();
                product p = UpdateProduct();
                resLbl.Text = pm.InsertProduct(p);
            }
        }

        private product UpdateProduct()
        {
            product p = new product();
            p.product_name = TitleBox.Text;
            p.product_description = DescBox.Text;
            p.unit = UnitBox.Text;
            p.image_url = ImageBox.Text;
            p.price_per_unit = Convert.ToInt32(PriceBox.Text);
            p.categories_catogories_id = CatList.SelectedIndex +1;
            p.product_type_idproduct_type = TypeList.SelectedIndex +1;
            
            return p;
        }

        
    }
}