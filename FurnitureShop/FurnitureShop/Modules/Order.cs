//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FurnitureShop.Modules
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public int OrderID { get; set; }
        public int FurnitureID { get; set; }
        public int ClientID { get; set; }
        public int ManagerID { get; set; }
        public System.DateTime OrderDate { get; set; }
    
        public virtual Client Client { get; set; }
        public virtual Furniture Furniture { get; set; }
        public virtual Manager Manager { get; set; }
    }
}
