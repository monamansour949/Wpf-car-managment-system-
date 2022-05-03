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
    /// Interaction logic for CategoryWindow.xaml
    /// </summary>
    public partial class CategoryWindow : Window
    {
        public event Action<category> categAdd;
        public List<category> carcategories;

      
      
        public CategoryWindow(List<category> _carcategories)
        {
            InitializeComponent();
        

            carcategories = _carcategories;
            if (_carcategories.Count > 0)
            {
                categoryListVIEW.ItemsSource = null;
                categoryListVIEW.ItemsSource = carcategories;
            }
        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

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

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void Add_Category(object sender, RoutedEventArgs e)
        {
            category carCat = new category();
            carCat.name = category_textBox.Text;
            if (category_textBox.Text.Length > 0)
            {
                if (categAdd != null)
                {
                    categAdd(carCat);
                }
                categoryListVIEW.ItemsSource = null;
                categoryListVIEW.ItemsSource = carcategories;
            }
            else
                MessageBox.Show("Enter category name");


        }

    

        private void Remove_Click(object sender, RoutedEventArgs e)
        {
            carcategories.RemoveAt(categoryListVIEW.SelectedIndex);
           
            categoryListVIEW.ItemsSource = null;
            categoryListVIEW.ItemsSource = carcategories;
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {

           
               
            
        }
    }
}
