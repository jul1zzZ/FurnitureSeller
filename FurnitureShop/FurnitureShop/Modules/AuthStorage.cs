using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FurnitureShop.Modules;

namespace FurnitureShop
{
    internal class AuthStorage
    {
        static public bool IsAuth { get; set; } = false;
        static public Auth Login { get; set; }
    }
}
