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
using FurnitureShop.Modules;
using System.Windows.Media.Animation;

namespace FurnitureShop
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
            DataContext = this;
            DoubleAnimation animation = new DoubleAnimation();
            animation.From = 0;
            animation.To = 200;
            animation.Duration = TimeSpan.FromSeconds(2);
            animation.EasingFunction = new QuadraticEase();
            LoginBtn.BeginAnimation(WidthProperty, animation);
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Auth auth = FurnitureSellEntities.GetContext().Auths.FirstOrDefault(u => u.Login == LoginTb.Text && u.Password == PassTb.Text);
                if (auth != null)
                {
                    MainWindow mainWindow = new MainWindow();
                    mainWindow.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Неправильные данные, пожалуйста, попробуйте еще раз");
                }

                AuthStorage.IsAuth = true;
                AuthStorage.Role = auth.Role;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
