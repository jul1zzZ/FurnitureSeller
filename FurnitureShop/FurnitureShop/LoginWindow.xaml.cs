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
using System.Windows.Navigation;
using FurnitureShop.Pages;
using MaterialDesignThemes.Wpf;

namespace FurnitureShop
{
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
                    if (auth.RoleID == 1)
                    {
                        MainUserWindow mainUser = new MainUserWindow();
                        mainUser.Show();
                        this.Close();
                    }
                    else if (auth.RoleID == 2)
                    {
                    MainWindow mainWindow = new MainWindow();
                    mainWindow.Show();
                    this.Close();
                    }
                }
                else
                {
                    MessageBox.Show("Неправильные данные, пожалуйста, попробуйте еще раз");
                }

                AuthStorage.IsAuth = true;
                AuthStorage.RoleID = auth.RoleID;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
