
namespace Megastore
 {
     using System;
     using System.Data.Entity;
     using System.Data.Entity.Infrastructure;
     
     public partial class mydbEntities : DbContext
     {
         public mydbEntities()
             : base("name=mydbEntities")
         {
        }
     
         protected override void OnModelCreating(DbModelBuilder modelBuilder)
         {
             throw new UnintentionalCodeFirstException();
        }
     
         public DbSet<admin> admins { get; set; }
         public DbSet<category> categories { get; set; }
        public DbSet<customer> customers { get; set; }
         public DbSet<payment_type> payment_type { get; set; }
         public DbSet<product> products { get; set; }
         public DbSet<product_type> product_type { get; set; }
         public DbSet<shipment> shipments { get; set; }
         public DbSet<shipment_details> shipment_details { get; set; }
         public DbSet<shipment_type> shipment_type { get; set; }
         public DbSet<stock> stocks { get; set; }
     }
}