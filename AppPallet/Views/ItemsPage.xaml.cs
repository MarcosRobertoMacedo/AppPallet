using AppPallet.Models;
using AppPallet.ViewModels;
using AppPallet.Views;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppPallet.Views
{
    public partial class ItemsPage : ContentPage
    {
        ItemsViewModel _viewModel;
        private HttpClient _client = new HttpClient();

        public ItemsPage()
        {
            InitializeComponent();
            BindingContext = _viewModel = new ItemsViewModel();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            _viewModel.OnAppearing();
            PositionStarting();
            FetchAndUpdatePositions();
        }

        private async void FetchAndUpdatePositions()
        {
            try
            {
                string url = "http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/PosicaoEquipes/1";
                var response = await _client.GetStringAsync(url);
                var positions = JArray.Parse(response);
                int qtd = 0;
                // Processar cada item no retorno
                foreach (var position in positions)
                {
                    qtd++;
                    string equipe = (string)position["EQUIPE"];
                    int quant = (int)position["QUANT"];
                    UpdatePotinhoPosition(equipe, quant, qtd);
                }
            }
            catch (Exception ex)
            {
                // Lidar com erros de forma apropriada (exibir mensagem, log, etc.)
                Console.WriteLine($"Erro ao buscar posições: {ex.Message}");
            }
        }

        private void PositionStarting()
        {
            AbsoluteLayout.SetLayoutBounds(PotinhoAmarelo, new Rectangle(0.2, 0.18, 10, 10));

            AbsoluteLayout.SetLayoutBounds(PotinhoVerde, new Rectangle(0.2, 0.20, 10, 10));

            AbsoluteLayout.SetLayoutBounds(PotinhoAzul, new Rectangle(0.2, 0.22, 10, 10));
        }

        private void UpdatePotinhoPosition(string equipe, int paletesEntregues, int qtd)
        {
            double x = 0.2, y = 0.22;
            if (qtd == 1)
            {
                paletesEntregues = 600;
        }
             else
            {
               paletesEntregues = 500;
            }
            // Definir coordenadas para cada valor de paletes entregues
            switch (paletesEntregues)
            {
                case int n when (n >= 100 && n < 200):
                    if (qtd == 1)
                    {
                        x = 0.26; y = 0.18;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.26; y = 0.20;
                        break;
                    }
                    else
                    {
                        x = 0.26; y = 0.22;
                        break;
                    }
                case int n when (n >= 200 && n < 300):
                    if (qtd == 1)
                    {
                        x = 0.39; y = 0.18;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.39; y = 0.20;
                        break;
                    }
                    else
                    {
                        x = 0.39; y = 0.22;
                        break;
                    }
                case int n when (n >= 300 && n < 400):
                    if (qtd == 1)
                    {
                        x = 0.52; y = 0.18;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.52; y = 0.20;
                        break;
                    }
                    else
                    {
                        x = 0.52; y = 0.22;
                        break;
                    }
                case int n when (n >= 400 && n < 500):
                    if (qtd == 1)
                    {
                        x = 0.66; y = 0.18;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.66; y = 0.20;
                        break;
                    }
                    else
                    {
                        x = 0.66; y = 0.22;
                        break;
                    }
                case int n when (n >= 500 && n < 600):
                    if (qtd == 1)
                    {
                        x = 0.85; y = 0.45;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.85; y = 0.47;
                        break;
                    }
                    else
                    {
                        x = 0.85; y = 0.49;
                        break;
                    }
                case int n when (n >= 600 && n < 700):
                    if (qtd == 1)
                    {
                        x = 0.85; y = 0.45;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.85; y = 0.45;
                        break;
                    }
                    else
                    {
                        x = 0.85; y = 0.45;
                        break;
                    }
                case int n when (n >= 700 && n < 800):
                    if (qtd == 1)
                    {
                        x = 0.66; y = 0.47;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.66; y = 0.49;
                        break;
                    }
                    else
                    {
                        x = 0.66; y = 0.51;
                        break;
                    }
                case int n when (n >= 800 && n < 900):
                    if (qtd == 1)
                    {
                        x = 0.52; y = 0.47;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.52; y = 0.49;
                        break;
                    }
                    else
                    {
                        x = 0.52; y = 0.51;
                        break;
                    }
                case int n when (n >= 900 && n < 1000):
                    if (qtd == 1)
                    {
                        x = 0.39; y = 0.47;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.39; y = 0.49;
                        break;
                    }
                    else
                    {
                        x = 0.39; y = 0.51;
                        break;
                    }
                case int n when (n >= 1000 && n < 1100):
                    if (qtd == 1)
                    {
                        x = 0.26; y = 0.47;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.26; y = 0.49;
                        break;
                    }
                    else
                    {
                        x = 0.26; y = 0.51;
                        break;
                    }
                case int n when (n >= 1100 && n < 1200):
                    if (qtd == 1)
                    {
                        x = 0.15; y = 0.53;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.15; y = 0.55;
                        break;
                    }
                    else
                    {
                        x = 0.15; y = 0.57;
                        break;
                    }
                case int n when (n >= 1200 && n < 1300):
                    if (qtd == 1)
                    {
                        x = 0.15; y = 0.71;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.15; y = 0.73;
                        break;
                    }
                    else
                    {
                        x = 0.15; y = 0.75;
                        break;
                    }
                case int n when (n >= 1300 && n < 1400):
                    x = 0.85; y = 0.45;
                    break;
                case int n when (n >= 1400 && n < 1500):
                    x = 0.85; y = 0.45;
                    break;
                // Adicionar mais casos conforme necessário
                default:
                    if (qtd == 1)
                    {
                        x = 0.2; y = 0.18;
                        break;
                    }
                    else if (qtd == 2)
                    {
                        x = 0.2; y = 0.20;
                        break;
                    }
                    else
                    {
                        x = 0.2; y = 0.22;
                        break;
                    }
            }

            // Atualizar a posição dos potinhos baseado na equipe
            switch (equipe)
            {
                case "AMARELO":
                    AbsoluteLayout.SetLayoutBounds(PotinhoAmarelo, new Rectangle(x, y, 10, 10));
                    break;
                case "VERDE":
                    AbsoluteLayout.SetLayoutBounds(PotinhoVerde, new Rectangle(x, y, 10, 10));
                    break;
                case "AZUL":
                    AbsoluteLayout.SetLayoutBounds(PotinhoAzul, new Rectangle(x, y, 10, 10));
                    break;
                    // Adicionar mais equipes conforme necessário
            }
        }
    }

}