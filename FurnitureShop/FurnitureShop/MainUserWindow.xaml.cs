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
using System.Windows.Shapes;

namespace FurnitureShop
{
    /// <summary>
    /// Логика взаимодействия для MainUserWindow.xaml
    /// </summary>
    public partial class MainUserWindow : Window
    {
        public MainUserWindow()
        {
            InitializeComponent();
            SecondFrame.Navigate(new Pages.FurnitureCatalogUserPage());
        }

        private void AboutUsBtn_Click(object sender, RoutedEventArgs e)
        {
            SecondFrame.Navigate(new Pages.AboutUsPage());
        }
    }
}
