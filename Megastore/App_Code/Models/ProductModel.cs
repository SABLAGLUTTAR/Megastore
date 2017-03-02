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
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
                db.products.Add(product);
                db.SaveChanges();
                return product.product_name + " was successfully added";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public product GetProduct(int id)
        {
            try
            {
                using (etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities())
                {
                    product products = db.products.Find(id);
                    return products;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public String UpdateProduct(int id, product product)
        {
            try
            {
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
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
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
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

        public List<product> GetAllProducts()
        {
            try
            {
                using (etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities())
                {
                    List<product> products = (from x in db.products select x).ToList();
                    return products;
                }
            }
            catch (Exception e)
            {
                return null;
            }
        }


    }
}