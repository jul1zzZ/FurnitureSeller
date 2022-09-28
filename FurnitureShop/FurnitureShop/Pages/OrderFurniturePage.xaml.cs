using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using FurnitureShop.Modules;

namespace FurnitureShop.Pages
{
    /// <summary>
    /// Логика взаимодействия для OrderFurniturePage.xaml
    /// </summary>
    public partial class OrderFurniturePage : Page
    {
        List<Order> Orders { get; set; }
        public OrderFurniturePage(Furniture furniture)
        {
            InitializeComponent();
            OrderData.ItemsSource = FurnitureSellEntities.GetContext().Orders.Where(o => o.FurnitureID == furniture.FurnitureID).OrderBy(o => o.OrderDate).ToList();
        }
    }
}
