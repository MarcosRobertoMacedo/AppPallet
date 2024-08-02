using AppPallet.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using static System.Net.WebRequestMethods;

namespace AppPallet.Views
{
    public partial class BaixaPalletPage : ContentPage
    {
        public IControleRepository _controleRepository;
        ObservableCollection<LoginAcesso> dadosAcesso { get; set; } = new ObservableCollection<LoginAcesso>();
        private LoginAcesso _acessoDados;
        private VerificaCarga _verificaCargaDados;
        private static readonly HttpClient _client = new HttpClient(new HttpClientHandler
        {
            AllowAutoRedirect = false
        });

        public BaixaPalletPage()
        {
            InitializeComponent();

            _controleRepository = new ControleRepository();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            _acessoDados = DadosServicos.Instance.AcessoDados;

            LoadData();
        }

        private async void LoadData()
        {
            string url = $"http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/VerificaCarga/{_acessoDados.empresa}/{_acessoDados.codigo}";

            try
            {
                HttpResponseMessage response = await _client.GetAsync(url);

                if (response.IsSuccessStatusCode)
                {
                    string jsonResponse = await response.Content.ReadAsStringAsync();

                    // Log para depurar a resposta recebida
                    Console.WriteLine($"Resposta recebida: {jsonResponse}");

                    if (IsJson(jsonResponse))
                    {
                        var verificaCargaList = JsonConvert.DeserializeObject<List<VerificaCarga>>(jsonResponse);

                        if (verificaCargaList != null && verificaCargaList.Count > 0)
                        {
                            var data = verificaCargaList[0];

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
                        else
                        {
                            //await DisplayAlert("Aviso", "Nenhum dado encontrado.", "OK");
                            DependencyService.Get<IMessage>().LongAlert("Nenhum dado encontrado.");
                        }
                    }
                    else
                    {
                        //await DisplayAlert("Erro", "Resposta do servidor não é JSON válido.", "OK");
                        DependencyService.Get<IMessage>().LongAlert("Resposta do servidor não é JSON válido.");
                    }
                }
                else
                {
                    // Tratar erro de status HTTP não esperado
                    //await DisplayAlert("Erro", $"Erro ao carregar dados. StatusCode: {response.StatusCode}", "OK");
                    DependencyService.Get<IMessage>().LongAlert($"Erro ao carregar dados. StatusCode: {response.StatusCode}");
                }
            }
            catch (HttpRequestException httpEx)
            {
                //await DisplayAlert("Erro", $"Erro de rede ao carregar dados: {httpEx.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Erro de rede ao carregar dados: {httpEx.Message}");
            }
            catch (JsonException jsonEx)
            {
                //await DisplayAlert("Erro", $"Erro ao processar os dados recebidos: {jsonEx.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Erro ao processar os dados recebidos: {jsonEx.Message}");
            }
            catch (Exception ex)
            {
                //await DisplayAlert("Erro", $"Falha ao carregar dados: {ex.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Falha ao carregar dados: {ex.Message}");
            }
        }

        private bool IsJson(string input)
        {
            input = input.Trim();
            return input.StartsWith("{") && input.EndsWith("}") || input.StartsWith("[") && input.EndsWith("]");
        }

        private async void GravarButton_Clicked(object sender, EventArgs e)
        {
            try
            {
                _verificaCargaDados = DadosServicos.Instance.VerificaCargaDados;

                if (_verificaCargaDados == null)
                {
                    //await DisplayAlert("Erro", "Dados da carga não encontrados.", "OK");
                    DependencyService.Get<IMessage>().LongAlert("Dados da carga não encontrados.");
                    return;
                }

                if (int.TryParse(entregaEntry.Text, out int quantidadeEntregue) &&
                    int.TryParse(devolucaoEntry.Text, out int quantidadeDevolvido) &&
                    int.TryParse(_verificaCargaDados.ID, out int cargaId))
                {
                    Console.WriteLine($"Carga ID: {cargaId}, Quantidade Entregue: {quantidadeEntregue}, Quantidade Devolvido: {quantidadeDevolvido}");

                    bool success = await SendDataToServer(cargaId, quantidadeEntregue, quantidadeDevolvido);
                    if (success)
                    {
                        //await DisplayAlert("Sucesso", "Dados enviados com sucesso!", "OK");
                        DependencyService.Get<IMessage>().LongAlert("Dados enviados com sucesso!");
                        await Shell.Current.GoToAsync("//CopaPalletPage");
                    }
                    else
                    {
                        //await DisplayAlert("Erro", "Falha ao enviar dados.", "OK");
                        DependencyService.Get<IMessage>().LongAlert("Falha ao enviar dados.");
                    }
                }
                else
                {
                    //await DisplayAlert("Erro", "Entradas inválidas.", "OK");
                    DependencyService.Get<IMessage>().LongAlert("Entradas inválidas.");
                }
            }
            catch (Exception ex)
            {
                //await DisplayAlert("Erro", $"Ocorreu um erro: {ex.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Ocorreu um erro: {ex.Message}");
            }
        }


        private async Task<bool> SendDataToServer(int cargaId, int quantidadeEntregue, int quantidadeDevolvido)
        {
            var url = $"http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/GravaPaletes/{cargaId}/{quantidadeEntregue}/{quantidadeDevolvido}";

            try
            {
                Console.WriteLine($"URL being called: {url}");

                var request = new HttpRequestMessage(HttpMethod.Post, url);

                // Add any necessary headers here
                request.Headers.Add("User-Agent", "XamarinApp");

                var response = await _client.SendAsync(request);
                if (response.IsSuccessStatusCode)
                {
                    return true;
                }
                else
                {
                    string errorMessage = await response.Content.ReadAsStringAsync();
                    //await DisplayAlert("Erro", $"Falha ao enviar dados. StatusCode: {response.StatusCode}, Message: {errorMessage}", "OK");
                    DependencyService.Get<IMessage>().LongAlert($"Falha ao enviar dados. StatusCode: {response.StatusCode} Message: {errorMessage}");
                    return false;
                }
            }
            catch (HttpRequestException httpEx)
            {
                //await DisplayAlert("Erro", $"Erro de rede ao enviar dados: {httpEx.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Erro de rede ao enviar dados: {httpEx.Message}");
            }
            catch (TaskCanceledException timeoutEx)
            {
                //await DisplayAlert("Erro", $"Tempo de solicitação esgotado: {timeoutEx.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Tempo de solicitação esgotado: {timeoutEx.Message}");
            }
            catch (Exception ex)
            {
                //await DisplayAlert("Erro", $"Erro ao enviar dados para o servidor: {ex.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Erro ao enviar dados para o servidor: {ex.Message}");
            }

            return false;
        }
    }
}
