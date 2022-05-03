using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
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
using Items;
using Microsoft.Win32;

namespace WpfCarManagmentSystem
{
    /// <summary>
    /// Interaction logic for ProductView.xaml
    /// </summary>
    public partial class ProductView : Window, INotifyPropertyChanged
    {
        private DateTime downTime;
        private object downSender;
       
        //List of Products
        //using ObeservaleCollection to provide notifications in any changes
        private ObservableCollection<Product> Prodcuts = new ObservableCollection<Product>()
        {
             new Product
            {
                Name = "BMW",
                ImagePath="images\\Cars\\BMW.jpg",
                Price=786000
            },

             new Product
            {
                Name = "Marceds",
                ImagePath="images\\Cars\\Marcedes.jpg",
                Price=648000
            },

              new Product
            {
                Name = "Audi",
                ImagePath="images\\Cars\\Audi.jpg",
                Price=589000
            },

              new Product {
                Name = "Ferrari",
                ImagePath="images\\Cars\\Ferrari.jpg",
                Price=988000
            },

              new Product
            {
                Name = "Toyota",
                ImagePath="images\\Cars\\Toyota.jpg",
                Price=248000
            },
                new Product
            {
                Name = "lamborghini",
                ImagePath="images\\Cars\\lamborghini.jpg",
                Price=548000
            }
        };

        public ObservableCollection<Items.Product> items
        {
            get { return Prodcuts; }
            set
            {
                Prodcuts = value;
                OnPropertyChanged();
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged([CallerMemberName] string propertyname = null)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyname));
            }
        }

        ObservableCollection<Product> GetListboxItems(ObservableCollection<Product> list)
        {
            return list;
        }

        public ProductView()
        {
            InitializeComponent();
            mainlistbox.ItemsSource = GetListboxItems(items);
            this.DataContext = this;
        }

        //IMAGE

        // ADD

        private void AddImage_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.downSender = sender;
                this.downTime = DateTime.Now;
                BuyButton.Visibility = Visibility.Hidden;
                AdditionWindow addition = new AdditionWindow();
                addition.ShowDialog();
                bool? result = addition.DialogResult;
                if (result == true)
                {
                    items.Add(addition.GetAdditionItem());
                }
                if (mainlistbox.SelectedIndex > -1)
                {
                    BuyButton.Visibility = Visibility.Visible;
                }
            }
        }

        private void AddImage_MouseUp(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Released && sender == this.downSender)
            {
                TimeSpan timeSinceDown = DateTime.Now - this.downTime;
                if (timeSinceDown.TotalMilliseconds < 500)
                {
                    BuyButton.Visibility = Visibility.Hidden;
                    AdditionWindow addition = new AdditionWindow();
                    addition.ShowDialog();
                    bool? result = addition.DialogResult;
                    if (result == true)
                    {
                        items.Add(addition.GetAdditionItem());
                    }

                    if (mainlistbox.SelectedIndex > -1)
                    {
                        BuyButton.Visibility = Visibility.Visible;
                    }
                }
            }

        }


        //EDIT

        private void EditImage_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.downSender = sender;
                this.downTime = DateTime.Now;
                if (mainlistbox.SelectedIndex > -1)
                {
                    BuyButton.Visibility = Visibility.Hidden;
                    ListBoxItem editionWindow = new ListBoxItem(items[mainlistbox.SelectedIndex], mainlistbox.SelectedIndex);
                    editionWindow.ShowDialog();
                    bool? result = editionWindow.DialogResult;
                    if (result == true)
                    {
                        int count = editionWindow.GetEditCount();
                        CollectionViewSource.GetDefaultView(this.items).Refresh();
                        items[count] = editionWindow.GetEditionItem();
                    }

                    if (mainlistbox.SelectedIndex > -1)
                    {
                        BuyButton.Visibility = Visibility.Visible;
                    }
                }
            }
        }

        private void EditImage_MouseUp(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Released && sender == this.downSender)
            {
                TimeSpan timeSinceDown = DateTime.Now - this.downTime;
                if (timeSinceDown.TotalMilliseconds < 500)
                {
                    if (mainlistbox.SelectedIndex > -1)
                    {
                        BuyButton.Visibility = Visibility.Hidden;
                        ListBoxItem editionWindow = new ListBoxItem(items[mainlistbox.SelectedIndex], mainlistbox.SelectedIndex);
                        editionWindow.ShowDialog();
                        bool? result = editionWindow.DialogResult;
                        if (result == true)
                        {
                            int count = editionWindow.GetEditCount();
                            CollectionViewSource.GetDefaultView(this.items).Refresh();
                            items[count] = editionWindow.GetEditionItem();
                        }

                        if (mainlistbox.SelectedIndex > -1)
                        {
                            BuyButton.Visibility = Visibility.Visible;
                        }

                    }
                }
            }
        }


        //REMOVE

        private void RemoveImage_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.downSender = sender;
                this.downTime = DateTime.Now;
                if (mainlistbox.SelectedIndex > -1)
                {

                    if (MessageBox.Show("Do you want to remove this item", "Question", MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                    {
                        items.RemoveAt(mainlistbox.SelectedIndex);
                    }
                }
            }
        }

        private void RemoveImage_MouseUp(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Released && sender == this.downSender)
            {
                TimeSpan timeSinceDown = DateTime.Now - this.downTime;
                if (timeSinceDown.TotalMilliseconds < 500)
                {
                    if (mainlistbox.SelectedIndex > -1)
                    {
                        items.RemoveAt(mainlistbox.SelectedIndex);
                    }
                }
            }
        }

        //Buy Button
        private void BuyButton_Click(object sender, RoutedEventArgs e)
        {
            if (mainlistbox.SelectedIndex > -1)
            {
                if (MessageBox.Show($"Do you want to buy this item?{Environment.NewLine}               Price : {items[mainlistbox.SelectedIndex].Price}$", "Question", MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                {
                    items.RemoveAt(mainlistbox.SelectedIndex);
                    mainlistbox.SelectedIndex = -1;
                }
            }
        }

        //When Item selected, Dispaly Buy button
        private void Mainlistbox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (mainlistbox.SelectedIndex > -1)
            {
                BuyButton.Visibility = Visibility.Visible;
            }
            else
            {
                BuyButton.Visibility = Visibility.Hidden;
            }
        }

        //Exit Button
        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            Close();

        }
        //Minimize Window
        private void Minimize_Click(object sender, RoutedEventArgs e)
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

        private void Maximize_Click(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == WindowState.Normal)
            {
                this.WindowState = WindowState.Maximized;
            }
            else if (this.WindowState == WindowState.Maximized)
            {
                this.WindowState = WindowState.Normal;
            }


        }
        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            this.Close();
            mainWindow.Show();
        }
    }
}
