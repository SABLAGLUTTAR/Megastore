using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Megastore.pages
{
    public class Admin
    {

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
