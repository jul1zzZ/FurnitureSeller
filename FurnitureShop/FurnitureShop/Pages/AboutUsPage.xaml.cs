
using GMap.NET.WindowsPresentation;
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
using GMap.NET;
using GMap.NET.MapProviders;
using GMap.NET.WindowsForms.Markers;
using GMap.NET.WindowsForms.ToolTips;
using System.Net;
using GMap.NET.WindowsForms;

namespace FurnitureShop.Pages
{
    public partial class AboutUsPage : Page
    {
        public AboutUsPage()
        {
            InitializeComponent();
        }

        private void GMap_Loaded(object sender, RoutedEventArgs e)
        {
            GMap.NET.GMaps.Instance.Mode = GMap.NET.AccessMode.ServerAndCache; //выбор подгрузки карты – онлайн или из ресурсов
            GooglMap.MapProvider = GMap.NET.MapProviders.GoogleMapProvider.Instance; //какой провайдер карт используется (в нашем случае гугл) 
            GooglMap.MinZoom = 10; //минимальный зум
            GooglMap.MaxZoom = 16; //максимальный зум
            GooglMap.Zoom = 16; // какой используется зум при открытии
            GooglMap.Position = new GMap.NET.PointLatLng(55.79952140236073, 49.21171381326614);// точка 
            GooglMap.MouseWheelZoomType = GMap.NET.MouseWheelZoomType.MousePositionAndCenter; // как приближает (просто в центр карты или по положению мыши)
            GooglMap.CanDragMap = true; // перетаскивание карты мышью
            //GooglMap.DragButton = MouseButtons.Left; // какой кнопкой осуществляется перетаскивание
            GooglMap.ShowCenter = false; //показывать или скрывать красный крестик в центре
            GooglMap.ShowTileGridLines = false; //показывать или скрывать тайлы

            GMap.NET.WindowsPresentation.GMapMarker marker = new GMap.NET.WindowsPresentation.GMapMarker(new PointLatLng(55.79952140236073, 49.21171381326614));
            //BitmapImage bitmap = new BitmapImage();
            //bitmap.BeginInit();
            //bitmap.UriSource = new Uri(@"C:\Users\witless\Desktop\FurnituleSell\FurnitureShop\FurnitureShop\bin\Release\MapMarker.png");
            //bitmap.EndInit();

            //Image image = new Image();
            //image.Source = bitmap;
            //marker.Shape = image;
            //GooglMap.Markers.Add(marker);

            marker.Shape = new Image
            {
                Source = new BitmapImage(new Uri(@"C:\Users\witless\Desktop\FurnituleSell\FurnitureShop\FurnitureShop\bin\Release\MapMarker.png")),
                Width = 40,
                Height = 40,
                ToolTip = "Furniture SHOP",
                Visibility = Visibility.Visible
            };
            GooglMap.Markers.Add(marker);
        }
    }
}
