//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Megastore
{
    using System;
    using System.Collections.Generic;
    
    public partial class product_type
    {
        public product_type()
        {
            this.products = new HashSet<product>();
        }
    
        public int product_type_id { get; set; }
        public string type_name { get; set; }
    
        public virtual ICollection<product> products { get; set; }
    }
}
