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
    /// Interaction logic for CustomerWindow.xaml
    /// </summary>
    public partial class CustomerWindow : Window
    {
        public event Action<customer> customerAdd;
        public List<customer> customers;

        public CustomerWindow(List<customer> _customers)
        {
            InitializeComponent();
            customers = _customers;
            if (_customers.Count > 0)
            {
                categoryListVIEW.ItemsSource = null;
                categoryListVIEW.ItemsSource = customers;
            }
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {

            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void PanelHeader_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void ListView_MouseDown(object sender, MouseButtonEventArgs e)
        {

        }

        private void Add_customer(object sender, RoutedEventArgs e)
        {
            customer cust = new customer();
            cust.name = cunstomerName_textBox.Text;
            if (cunstomerName_textBox.Text.Length > 0)
            {
                if (customerAdd != null)
                {
                    customerAdd(cust);
                }
                categoryListVIEW.ItemsSource = null;
                categoryListVIEW.ItemsSource = customers;
            }
            else
                MessageBox.Show("Enter customer name");
        }

        private void Remove_customer(object sender, RoutedEventArgs e)

        {
            customers.RemoveAt(categoryListVIEW.SelectedIndex);
           
            categoryListVIEW.ItemsSource = null;
            categoryListVIEW.ItemsSource = customers;

        }
    }
}
