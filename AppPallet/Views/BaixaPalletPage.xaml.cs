using AppPallet.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Net.Http;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppPallet.Views
{
    public partial class BaixaPalletPage : ContentPage
    {
        public IControleRepository _controleRepository;
        ObservableCollection<LoginAcesso> dadosAcesso { get; set; } = new ObservableCollection<LoginAcesso>();
        private LoginAcesso _acessoDados;
        private VerificaCarga _verificaCargaDados;

        public BaixaPalletPage()
        {
            InitializeComponent();
           
            _controleRepository = new ControleRepository();

            // Recuperar os dados do serviço singleton
            _acessoDados = DadosServicos.Instance.AcessoDados;            

            LoadData();
        }

        private async void LoadData()
        {
            var response = Preferences.Get("LoginAcesso", "false");

            //We deserialize the JSON data from this line
            var result = JsonConvert.DeserializeObject<List<LoginAcesso>>(response);

            //After deserializing , we store our data in the List called ObservableCollection
            dadosAcesso = new ObservableCollection<LoginAcesso>(result);

            //url certa
            string url1 = "http://prosystem5.masterdaweb.net:8081/datasnap/rest/TserverAPPnfe/VerificaCarga/" + _acessoDados.empresa +
                "/" + _acessoDados.codigo;

            //url teste
            string url = "http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/VerificaCarga/1/8";
            
            using (HttpClient client = new HttpClient())
            {
                try
                {
                    string jsonResponse = await client.GetStringAsync(url);

                    if (JsonConvert.DeserializeObject<List<VerificaCarga>>(jsonResponse) != null && JsonConvert.DeserializeObject<List<VerificaCarga>>(jsonResponse).Count > 0)
                    {
                        var data = JsonConvert.DeserializeObject<List<VerificaCarga>>(jsonResponse)[0];

                        // Parse the date from the string
                        DateTime parsedDate;
                        if (DateTime.TryParse(data.DATA, out parsedDate))
                        {
                            dataDatePicker.Date = parsedDate;
                        }

                        placaEntry.Text = data.PLACA;
                        entregaEntry.Text = data.QUANT;
                        devolucaoEntry.Text = data.QUANTDV;

                        DadosServicos.Instance.VerificaCargaDados = data;
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Erro", "Falha ao carregar dados: " + ex.Message, "OK");
                }
            }
        }

        private async void GravarButton_Clicked(object sender, EventArgs e)
        {
            _verificaCargaDados = DadosServicos.Instance.VerificaCargaDados;

            if (int.TryParse(entregaEntry.Text, out int quantidadeEntregue) &&
               int.TryParse(devolucaoEntry.Text, out int quantidadeDevolvido) &&
               int.TryParse(_verificaCargaDados.ID, out int cargaId)) // Adicionando a conversão aqui
            {
                // Logging the data before sending
                Console.WriteLine($"Carga ID: {cargaId}, Quantidade Entregue: {quantidadeEntregue}, Quantidade Devolvido: {quantidadeDevolvido}");

                bool success = await SendDataToServer(cargaId, quantidadeEntregue, quantidadeDevolvido);
                if (success)
                {
                    await DisplayAlert("Sucesso", "Dados enviados com sucesso!", "OK");
                }
                else
                {
                    await DisplayAlert("Erro", "Falha ao enviar dados.", "OK");
                }
            }
            else
            {
                await DisplayAlert("Erro", "Entradas inválidas.", "OK");
            }
        }

        private async Task<bool> SendDataToServer(int cargaId, int quantidadeEntregue, int quantidadeDevolvido)
        {
            var url = $"http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/GravaPaletes/{cargaId}/{quantidadeEntregue}/{quantidadeDevolvido}";
            using (var client = new HttpClient())
            {
                try
                {
                    // Logging the URL for debugging purposes
                    Console.WriteLine($"Sending data to URL: {url}");

                    var response = await client.PostAsync(url, null);
                    if (response.IsSuccessStatusCode)
                    {
                        return true;
                    }
                    else
                    {
                        string errorMessage = await response.Content.ReadAsStringAsync();
                        await DisplayAlert("Erro", $"Falha ao enviar dados. StatusCode: {response.StatusCode}, Message: {errorMessage}", "OK");
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Erro", $"Erro ao enviar dados para o servidor: {ex.Message}", "OK");
                    return false;
                }
            }
        }


    }
}