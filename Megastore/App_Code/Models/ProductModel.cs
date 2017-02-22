using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Megastore.pages
{
    public class ProductModel
    {
        public String InsertProduct(product product)
        {
            try
            {
                mydbEntities db = new mydbEntities();
                db.products.Add(product);
                db.SaveChanges();
                return product.product_name + " was successfully added";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public String UpdateProduct(int id, product product)
        {
            try
            {
                mydbEntities db = new mydbEntities();
                product p = db.products.Find(id);
                p.product_description = product.product_description;
                p.product_name = product.product_name;
                p.product_type = product.product_type;
                p.image_url = product.image_url;
                p.stock = product.stock;
                p.price_per_unit = product.price_per_unit;

                db.SaveChanges();
                return product.product_name + " was successfully updated";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public String DeleteProduct(int id)
        {
            try
            {
                mydbEntities db = new mydbEntities();
                product p = db.products.Find(id);
                db.products.Attach(p);
                db.products.Remove(p);
                db.SaveChanges();
                return p.product_name + " was successfully deleted";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}