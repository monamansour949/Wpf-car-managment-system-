using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
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
using Items;
using Microsoft.Win32;

namespace WpfCarManagmentSystem

{
    /// <summary>
    /// Interaction logic for EditionWindow.xaml
    /// </summary>
    public partial class ListBoxItem : Window
    {
        Product item;
        int editcount = 0;
        public ListBoxItem(Product edititem, int count)
        {
            InitializeComponent();
            this.DataContext = this;
            editcount = count;
            item = new Product();
            item = edititem;
            NameTxtbox.Text = item.Name;
            PriceTxtBox.Text = item.Price.ToString();
            ImagePathTxtbox.Text = item.ImagePath;
        }



        private void EditButton_Click(object sender, RoutedEventArgs e)
        {

            NameTxtbox.Text = NameTxtbox.Text.Trim();
            PriceTxtBox.Text = PriceTxtBox.Text.Trim();
            ImagePathTxtbox.Text = ImagePathTxtbox.Text.Trim();

            if (NameTxtbox.Text.Length > 0)
            {
                if (PriceTxtBox.Text.Length > 0)
                {
                    double price = 0;
                    try
                    {
                        price = Convert.ToDouble(PriceTxtBox.Text);
                    }
                    catch (Exception)
                    {
                        MessageBox.Show("Price is not correct.Please Again", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                        return;
                    }
                    if (ImagePathTxtbox.Text.Length > 0)
                    {
                        if (File.Exists(ImagePathTxtbox.Text) == true)
                        {
                            
                                    item = new Items.Product();
                                    item.Name = NameTxtbox.Text;
                                    item.Price = price;
                                    item.ImagePath = ImagePathTxtbox.Text;
                                    this.DialogResult = true;
                                    this.Close();

                        }
                        else
                        {
                            MessageBox.Show("There is no file in ImagePath.Path is not correct", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                        }
                    }
                    else
                    {
                        MessageBox.Show("ImagePath must not be empty", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                    }
                }
                else
                {
                    MessageBox.Show("Price must not be empty", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            }
            else
            {
                MessageBox.Show("Name must not be empty", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }

        }

        public Product GetEditionItem()
        {
            return item;
        }

        public int GetEditCount()
        {
            return editcount;
        }


        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
            this.Close();
        }



        private void OpenButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.ShowDialog();
            if (openFileDialog.FileName.Length > 0)
            {
                ImagePathTxtbox.Text = openFileDialog.FileName;
            }
        }



    }
}
