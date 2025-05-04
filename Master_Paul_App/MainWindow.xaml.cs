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
using System;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using System.Collections;
using Master_Paul_App;
using Master_Paul_App.Data;
using Master_Paul_App.Models;
using Master_Paul_App.Views;
using System.Threading;

namespace Master_Paul_App
{
    
    public partial class MainWindow : Window
    {
        public class PartnerViewModel
        {
            public PartnersImport PartnerData { get; set; }
            public int DiscountPercentage { get; set; }
        }

        // Фунция возвращает размер скидки в зависимости от количества покупок
        public static int CalculateDiscount(int _allNumberOfProducts)
        {
            int allNumberOfProducts = _allNumberOfProducts;

            int discount = 0;

            if (allNumberOfProducts < 10000)
            {
                discount = 0;
            }
            else if (allNumberOfProducts >= 10000 && allNumberOfProducts < 50000)
            {
                discount = 5;
            }
            else if (allNumberOfProducts >= 50000 && allNumberOfProducts < 300000)
            {
                discount = 10;
            }
            else if (allNumberOfProducts > 300000)
            {
                discount = 15;
            }

            return discount;
        }


        public MainWindow()
        {
            InitializeComponent();

            using (var context = new Master_Paul_BDContext())
            {
                var partners = context.PartnersImports.ToList();
                var viewModels = new List<PartnerViewModel>();

                foreach (var partner in partners)
                {
                    int allNumberOfProducts = 0;

                    foreach (var item in context.PartnerProductsImports)
                    {
                        if (partner.PartnerName == item.PartnerSName)
                        {
                            allNumberOfProducts += item.NumberOfProducts;
                        }
                    }

                    // Для каждого партнера добавляю размер скидки и его данные
                    viewModels.Add(new PartnerViewModel
                    {
                        PartnerData = partner,
                        DiscountPercentage = CalculateDiscount(allNumberOfProducts)
                    });
                }

                itemsControl.ItemsSource = viewModels;
            }
        }

        private void StackPanelMouseLeftButtonDown(object sender, MouseButtonEventArgs e) {
            var partner = (sender as Border).DataContext as PartnerViewModel;
            var editPartnerPage = new EditPartnerPage(partner);
            editPartnerPage.ShowDialog();
        }

        private void ButtonClick(object sender, RoutedEventArgs e) {
            AddPartnerPage addPartnerPage = new AddPartnerPage();
            this.Close();

            addPartnerPage.Show();
        }
    }
}
