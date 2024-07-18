using AppPallet.Models;
using AppPallet.ViewModels;
using AppPallet.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppPallet.Views
{
    public partial class ItemsPage : ContentPage
    {
        ItemsViewModel _viewModel;

        public ItemsPage()
        {
            InitializeComponent();

            UpdatePotinhoPosition(100); // Exemplo inicial

            BindingContext = _viewModel = new ItemsViewModel();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            _viewModel.OnAppearing();
        }

        public void UpdatePotinhoPosition(int paletesEntregues)
        {
            double x = 0, y = 0;

            // Definir coordenadas para cada valor de paletes entregues
            switch (paletesEntregues)
            {
                case 100:
                    x = 0.1; y = 0.1;
                    break;
                case 200:
                    x = 0.2; y = 0.1;
                    break;
                case 300:
                    x = 0.3; y = 0.1;
                    break;
                case 400:
                    x = 0.4; y = 0.1;
                    break;
                case 500:
                    x = 0.5; y = 0.1;
                    break;
                case 600:
                    x = 0.6; y = 0.1;
                    break;
                case 700:
                    x = 0.7; y = 0.1;
                    break;
                case 800:
                    x = 0.8; y = 0.1;
                    break;
                case 900:
                    x = 0.9; y = 0.1;
                    break;
                case 1000:
                    x = 0.9; y = 0.2;
                    break;
                case 1100:
                    x = 0.9; y = 0.3;
                    break;
                case 1200:
                    x = 0.9; y = 0.4;
                    break;
                case 1300:
                    x = 0.9; y = 0.5;
                    break;
                case 1400:
                    x = 0.9; y = 0.6;
                    break;
                case 1500:
                    x = 0.9; y = 0.7;
                    break;
                default:
                    x = 0.1; y = 0.1;
                    break;
            }

            // Atualizar a posição dos potinhos
            AbsoluteLayout.SetLayoutBounds(Potinho1, new Rectangle(x, y, 50, 50));
            AbsoluteLayout.SetLayoutBounds(Potinho2, new Rectangle(x, y, 50, 50));
            AbsoluteLayout.SetLayoutBounds(Potinho3, new Rectangle(x, y, 50, 50));
        }
    }
}