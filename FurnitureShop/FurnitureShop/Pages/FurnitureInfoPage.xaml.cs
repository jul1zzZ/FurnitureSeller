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
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using FurnitureShop.Modules;
using FurnitureShop.Pages;
using System.IO;
using Microsoft.Win32;

namespace FurnitureShop.Pages
{
    /// <summary>
    /// Логика взаимодействия для FurnitureInfoPage.xaml
    /// </summary>
    public partial class FurnitureInfoPage : Page
    {
        public Furniture Furniture { get; set; }

        public string _photoDirectory = $@"{Directory.GetCurrentDirectory()}\Images\";

        private string _photoPath;
        private string _photoName;
        public FurnitureInfoPage(Furniture furniture)
        {
            InitializeComponent();
            Furniture = furniture ?? new Furniture();
            FurnitureTypeCb.ItemsSource = FurnitureSellEntities.GetContext().FurnitureTypes.ToList();
            ColorCb.ItemsSource = FurnitureSellEntities.GetContext().Colors.ToList();
            DataContext = Furniture;
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            { 
            Furniture.FurnitureTypeID = (FurnitureTypeCb.SelectedItem as FurnitureType).FurnitureTypeID;
            Furniture.ColorID = (ColorCb.SelectedItem as Color).ColorID;
            if (_photoPath != null)
            {
                Furniture.Photo = _photoName;
                File.Copy(_photoPath, _photoDirectory + _photoName);
            }
            if (Furniture.FurnitureID == 0)
            {
                FurnitureSellEntities.GetContext().Furnitures.Add(Furniture);
            }
            FurnitureSellEntities.GetContext().SaveChanges();
            NavigationService.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.InnerException.Message);
            }
        }


        private void LoadPhotoBtn_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();

            openFileDialog.Filter = "JPG Files (*.jpg)|*.jpg|PNG Files (*.png)|*.png";
            if (openFileDialog.ShowDialog() == false)
            {
                return;
            }

            FileInfo fileInfo = new FileInfo(openFileDialog.FileName);

            if (fileInfo.Length > 8 * 1024 * 1024 * 6)
            {
                MessageBox.Show("Размер фото не должен превышать 6 мб");
                return;
            }

            _photoName = Guid.NewGuid().ToString();
            _photoPath = fileInfo.FullName;
        }
    }
}
