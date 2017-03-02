using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Megastore
{
    public class ShipmentModels
    {
        public String CreateShipment(shipment ship)
        {
            try
            {
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
                db.shipments.Add(ship);
                db.SaveChanges();
                return "Order successful by: " + ship.customer_customer_email;
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public shipment GetShipment(int id)
        {
            try
            {
                using (etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities())
                {
                    shipment ship = db.shipments.Find(id);
                    return ship;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public List<shipment> GetAllShipments()
        {
            try
            {
                using (etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities())
                {
                    List<shipment> shipments = (from x in db.shipments select x).ToList();
                    return shipments;
                }
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public List<shipment> MyOrders(String email)
        {
            try
            {
                using (etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities())
                {
                    List<shipment> shipments = (from x in db.shipments where x.customer_customer_email == email select x).ToList();
                    return shipments;
                }
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public String DeleteShipment(int id)
        {
            try
            {
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
                shipment p = db.shipments.Find(id);
                db.shipments.Attach(p);
                db.shipments.Remove(p);
                db.SaveChanges();
                return p.shipment_id + " was successfully deleted";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}