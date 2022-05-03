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

namespace WpfCarManagmentSystem
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        //Exit Button
        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

        ///Minimize Button
        private void MinimizeButton_Click(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == WindowState.Normal)
            {
                this.WindowState = WindowState.Minimized;
            }
            else if (this.WindowState == WindowState.Minimized)
            {
                this.WindowState = WindowState.Normal;
            }
        }

        //Login Button
        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            string Pwd = password.Password.ToString();

            Admin admin = new Admin();
            //Case Empty
            if (UName.Text == "" || Pwd == "")
            {
                MessageBox.Show("Provide User Name and Password");
            }
            //Case valid
            else if (UName.Text == admin.Name && Pwd == admin.Password)
            {
                MainWindow store = new MainWindow();
                this.Hide();
                store.Show();
            }
            else
            {
                //case any eggplant
                MessageBox.Show("Not Exist User Name or Password");
                UName.Text = "";
            }
        }
    }
}
