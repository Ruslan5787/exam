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
using static Master_Paul_App.MainWindow;
using System.Net.Mail;
using Master_Paul_App.Data;
namespace Master_Paul_App.Views {
    public partial class EditPartnerPage : Window {
        PartnersImport partnerFromMain;
        public EditPartnerPage(PartnerViewModel partnersImport) {
            InitializeComponent();

            partnerFromMain = partnersImport.PartnerData;

            NameInput.Text = partnersImport.PartnerData.PartnerName;
            TypeCompanyComboBox.Text = partnersImport.PartnerData.PartnerType;
            RatingInput.Text = partnersImport.PartnerData.Rating.ToString();
            AdressInput.Text = partnersImport.PartnerData.PartnerLegalAddress;
            FioInput.Text = partnersImport.PartnerData.Director;
            PhoneInput.Text = partnersImport.PartnerData.PartnerPhoneNumber;
            EmailInput.Text = partnersImport.PartnerData.PartnerEmailAddress;
        }

        private void ButtonClick(object sender, RoutedEventArgs e) {
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
                        MessageBox.Show("Введите корректный email");
                    } else {
                        using (Master_Paul_BDContext db = new Master_Paul_BDContext()) {
                            var partner = db.PartnersImports.Find(partnerFromMain.Id);

                        partnerFromMain.PartnerName = NameInput.Text;
                        partnerFromMain.PartnerType = TypeCompanyComboBox.Text;
                        partnerFromMain.Rating = Convert.ToByte(RatingInput.Text);
                        partnerFromMain.PartnerLegalAddress = AdressInput.Text;
                        partnerFromMain.Director = FioInput.Text;
                        partnerFromMain.PartnerPhoneNumber = PhoneInput.Text;
                        partnerFromMain.PartnerEmailAddress = EmailInput.Text;

                        partner.PartnerName = NameInput.Text;
                        partner.PartnerType = TypeCompanyComboBox.Text;
                        partner.Rating = Convert.ToByte(RatingInput.Text);
                        partner.PartnerLegalAddress = AdressInput.Text;
                        partner.Director = FioInput.Text;
                        partner.PartnerPhoneNumber = PhoneInput.Text;
                        partner.PartnerEmailAddress = EmailInput.Text;

                        db.SaveChanges();
                        }
                        this.Close();
                    }
            } else {
                MessageBox.Show("Заполните все поля данными", "Предупреждение");
            }
        }
    }
}
