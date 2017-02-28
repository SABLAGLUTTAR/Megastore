using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Megastore.pages
{
    public class CustomerModel
    {

        public String InsertCustomer(customer customer)
        {
            try
            {
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
                db.customers.Add(customer);
                db.SaveChanges();
                return customer.customer_email + " was successfully added";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public String UpdateCustomer(string id, customer customer)
        {
            try
            {
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
                customer c = db.customers.Find(id);
                c.customer_address = customer.customer_address;
                c.first_name = customer.first_name;
                c.last_name = customer.last_name;
                
                

                db.SaveChanges();
                return c.customer_email + " was successfully updated";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public String LoginCustomer(customer customer)
        {
            try
            {
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
                db.customers.Add(customer);
                db.SaveChanges();
                return customer.customer_email + " was successfully added";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public String DeleteCustomer(int id)
        {
            try
            {
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
                customer p = db.customers.Find(id);
                db.customers.Attach(p);
                db.customers.Remove(p);
                db.SaveChanges();
                return p.customer_address + " was successfully deleted";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}