using FurnitureShop.Modules;
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

namespace FurnitureShop.Pages
{
    /// <summary>
    /// Логика взаимодействия для FurnitureCatalogUserPage.xaml
    /// </summary>
    public partial class FurnitureCatalogUserPage : Page
    {
        int pageNum = 1;
        public FurnitureCatalogUserPage()
        {
            InitializeComponent();
            FurnitureLb.ItemsSource = FurnitureSellEntities.GetContext().Furnitures.ToList();

            List<FurnitureType> furnitureTypes = FurnitureSellEntities.GetContext().FurnitureTypes.ToList();
            furnitureTypes.Insert(0, new FurnitureType
            {
                Name = "Все"
            });
            FiltCb.ItemsSource = furnitureTypes;
            FiltCb.DisplayMemberPath = "Name";
            FiltCb.SelectedIndex = 0;
            SortCb.SelectedIndex = 0;
        }

        private void Update()
        {
            List<Furniture> furnitures = FurnitureSellEntities.GetContext().Furnitures.OrderBy(p => p.Name).ToList();
            if (FiltCb.SelectedIndex > 0)
            {
                furnitures = furnitures.Where(p => p.FurnitureTypeID == (FiltCb.SelectedItem as FurnitureType).FurnitureTypeID).ToList();
            }
            furnitures = furnitures.Where(p => p.Name.ToLower().Contains(SearchTb.Text.ToLower())).ToList();

            if (SortCb.SelectedIndex >= 0)
            {
                if (SortCb.SelectedIndex == 0)
                {
                    furnitures = furnitures.OrderBy(p => p.Price).ToList();
                }
                if (SortCb.SelectedIndex == 1)
                {
                    furnitures = furnitures.OrderByDescending(p => p.Price).ToList();
                }
            }

            try
            {
                bool canParse = int.TryParse(PageCount.Text, out int currentPage);
                List<Furniture> pageFurniture = new List<Furniture>();
                currentPage = currentPage <= 0 || currentPage > furnitures.Count || !canParse ? 1 : currentPage;
                int itemsPerPage = 50;
                int offset = ((currentPage - 1) * itemsPerPage + 1) - 1;
                for (int i = offset; i < itemsPerPage + offset; i++)
                {
                    if (i < furnitures.Count)
                    {
                        pageFurniture.Add(furnitures[i]);
                    }
                }
                FurnitureLb.ItemsSource = pageFurniture;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                FurnitureSellEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                FurnitureLb.ItemsSource = FurnitureSellEntities.GetContext().Furnitures.OrderBy(p => p.Name).ToList();
            }
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void SortCb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void FiltCb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void PageCount_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void prevPage_Click(object sender, RoutedEventArgs e)
        {
            List<Furniture> furnitures = FurnitureSellEntities.GetContext().Furnitures.OrderBy(p => p.Name).ToList();
            if (pageNum > 4)
            {
                pageNum -= 2;
                firstPage.Content = pageNum;
                secondPage.Content = pageNum + 1;
            }
        }

        private void firstPage_Click(object sender, RoutedEventArgs e)
        {
            PageCount.Text = pageNum.ToString();
            Update();
        }

        private void secondPage_Click(object sender, RoutedEventArgs e)
        {
            PageCount.Text = (pageNum + 1).ToString();
            Update();
        }

        private void nextPage_Click(object sender, RoutedEventArgs e)
        {
            List<Furniture> furnitures = FurnitureSellEntities.GetContext().Furnitures.OrderBy(p => p.Name).ToList();
            if (pageNum < furnitures.Count / 10)
            {
                pageNum += 2;
                firstPage.Content = pageNum;
                secondPage.Content = pageNum + 1;
            }
        }
    }
}
