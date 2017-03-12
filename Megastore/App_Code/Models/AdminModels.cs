using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Megastore
{
    public class AdminModels
    {
        public admin GetAdmin(string id)
        {
            try
            {
                using (etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities())
                {
                    admin ifadmin = db.admins.Find(id);
                    return ifadmin;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public string AddAdmin(admin admin)
        {
            try
            {
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
                db.admins.Add(admin);
                db.SaveChanges();
                return admin.email + " was successfully added";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }

        }

        public string RemoveAdmin(string email)
        {
            try
            {
                etvffqgz_megastoreEntities db = new etvffqgz_megastoreEntities();
                admin p = db.admins.Find(email);
                db.admins.Attach(p);
                db.admins.Remove(p);
                db.SaveChanges();
                return p.email + " was successfully deleted";
            }

            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}