using Master_Paul_App.Data;
using Master_Paul_App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Master_Paul_App.Views {
    /// <summary>
    /// Логика взаимодействия для AddPartnerPage.xaml
    /// </summary>
    public partial class AddPartnerPage : Window {
        public AddPartnerPage() {
            InitializeComponent();
        }

        private void ButtonClick(object sender, RoutedEventArgs e) {
            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }

        private void ButtonClick1(object sender, RoutedEventArgs e) {
            if (NameInput.Text != "" && RatingInput.Text != "" && AdressInput.Text != "" && FioInput.Text != "" && PhoneInput.Text != "" && EmailInput.Text != "") {
                if (!Regex.IsMatch(NameInput.Text, @"^[А-Яа-яA-Za-z][А-Яа-яA-Za-z0-9\s]*$")) {
                    MessageBox.Show("Имя может содержать только кириллицу и цифры");
                } else if (!Regex.IsMatch(RatingInput.Text, @"^(10|\d)$")) {
                    MessageBox.Show("Рейтинг может быть от 0 до 10");
                } else if (!Regex.IsMatch(AdressInput.Text, @"^[А-Яа-я0-9,\\.\s]+$")) {
                    MessageBox.Show("Адрес может содержать кириллицу, цифры, запятые и точки");
                } else if (!Regex.IsMatch(FioInput.Text, @"^[\p{IsCyrillic},.]+ [\p{IsCyrillic},.]+ [\p{IsCyrillic},.]+$")) {
                    MessageBox.Show("ФИО содержит только кириллицу");
                } else if (Regex.Replace(PhoneInput.Text, @"\s+", "").Length != 10 || Regex.Replace(PhoneInput.Text, @"\s+", "").Length > 10 && !Regex.Replace(PhoneInput.Text, @"\s+", "").All(char.IsDigit)) {
                    MessageBox.Show("Телефон должен содержать 10 цифр");
                } else if (!Regex.IsMatch(EmailInput.Text, @"^[^@\s]+@[^@\s]+\.[^@\s]+$")) {
                    MessageBox.Show("Введите корректный email", "Предупреждение", MessageBoxButton.OK,MessageBoxImage.Error);
                } else {
                    using (Master_Paul_BDContext db = new Master_Paul_BDContext()) {
                        var partner = new PartnersImport();

                        partner.PartnerName = NameInput.Text;
                        partner.PartnerType = TypeCompanyComboBox.Text;
                        partner.Rating = Convert.ToByte(RatingInput.Text);
                        partner.PartnerLegalAddress = AdressInput.Text;
                        partner.Director = FioInput.Text;
                        partner.PartnerPhoneNumber = PhoneInput.Text;
                        partner.PartnerEmailAddress = EmailInput.Text;

                        db.Add(partner);

                        db.SaveChanges();
                    }
                    MainWindow main = new MainWindow();
                    main.Show();
                    this.Close();
                }
            } else {
                MessageBox.Show("Заполните все поля данными", "Предупреждение");
            }
        }
    }
}
