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
    /// Логика взаимодействия для FurnitureListPage.xaml
    /// </summary>
    public partial class FurnitureListPage : Page
    {
        public List<Furniture> Furnitures { get; set; }
        public FurnitureListPage()
        {
            InitializeComponent();
            DataFurniture.ItemsSource = null;
            Furnitures = FurnitureSellEntities.GetContext().Furnitures.ToList();
            DataContext = this;
            DataFurniture.ItemsSource = Furnitures;
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.FurnitureInfoPage((Furniture)(sender as Button).DataContext));
        }

        private void AddFurnitureBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.FurnitureInfoPage(null));
        }

        private void DeleteBtn_Click(object sender, RoutedEventArgs e)
        {
            var selectedFurniture = DataFurniture.SelectedItems.Cast<Furniture>().ToList();
            MessageBoxResult messageBoxResult = MessageBox.Show($"Удалить {selectedFurniture.Count()} записей?", "Удаление", MessageBoxButton.OKCancel, MessageBoxImage.Question);
            if (messageBoxResult == MessageBoxResult.OK)
            {
                try
                {
                    Furniture x = selectedFurniture[0];
                    FurnitureSellEntities.GetContext().Furnitures.Remove(x);
                    FurnitureSellEntities.GetContext().SaveChanges();
                    MessageBox.Show("Записи удалены");
                    List<Furniture> furnitures = FurnitureSellEntities.GetContext().Furnitures.OrderBy(p => p.Name).ToList();
                    DataFurniture.ItemsSource = null;
                    DataFurniture.ItemsSource = furnitures;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "Ошибка удаления", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
