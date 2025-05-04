using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace Master_Paul_App.Models
{
    public partial class PartnersImport : INotifyPropertyChanged
    {
        private int _id;
        private string _partnerType = null!;
        private string _partnerName = null!;
        private string _director = null!;
        private string _partnerEmailAddress = null!;
        private string _partnerPhoneNumber = null!;
        private string _partnerLegalAddress = null!;
        private long _inn;
        private byte _rating;
        private ObservableCollection<PartnerProductsImport> __partnerProductsImports = new ObservableCollection<PartnerProductsImport>();

        public int Id {
            get => _id;
            set {
                if (_id != value) {
                    _id = value;
                    OnPropertyChanged();
                }
            }
        }

        public string PartnerType {
            get => _partnerType;
            set {
                if (_partnerType != value) {
                    _partnerType = value;
                    OnPropertyChanged();
                }
            }
        }

        public string PartnerName {
            get => _partnerName; set {
                if (_partnerName != value) {
                    _partnerName = value;
                    OnPropertyChanged();
                }
            }
        }
        public string Director {
            get => _director; set {
                if (_director != value) {
                    _director = value;
                    OnPropertyChanged();
                }
            }
        }
        public string PartnerEmailAddress {
            get => _partnerEmailAddress; set {
                if (_partnerEmailAddress != value) {
                    _partnerEmailAddress = value;
                    OnPropertyChanged();
                }
            }
        }
        public string PartnerPhoneNumber {
            get => _partnerPhoneNumber; set {
                if (_partnerPhoneNumber != value) {
                    _partnerPhoneNumber = value;
                    OnPropertyChanged();
                }
            }
        }
        public string PartnerLegalAddress {
            get => _partnerLegalAddress; set {
                if (_partnerLegalAddress != value) {
                    _partnerLegalAddress = value;
                    OnPropertyChanged();
                }
            }
        }
        public long Inn {
            get => _inn; set {
                if (_inn != value) {
                    _inn = value;
                    OnPropertyChanged();
                }
            }
        }
        public byte Rating {
            get => _rating; set {
                if (_rating != value) {
                    _rating = value;
                    OnPropertyChanged();
                }
            }
        }

        public virtual ObservableCollection<PartnerProductsImport> PartnerProductsImports {
            get => __partnerProductsImports; set {
                if (__partnerProductsImports != value) {
                    __partnerProductsImports = value;
                    OnPropertyChanged();
                }
            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string? propertyName = null) {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
