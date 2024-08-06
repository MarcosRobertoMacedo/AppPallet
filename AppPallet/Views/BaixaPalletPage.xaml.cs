using AppPallet.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using SkiaSharp;
using System.IO;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using FluentFTP.Helpers;
using AppPallet.Services;
using FluentFTP.Exceptions;


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
        private string _photoPath;

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
            ShowLoading(true);
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
                            _verificaCargaDados = DadosServicos.Instance.VerificaCargaDados;
                        }
                        else
                        {
                            ShowLoading(false);
                            //await DisplayAlert("Aviso", "Nenhum dado encontrado.", "OK");
                            DependencyService.Get<IMessage>().LongAlert("Nenhum dado encontrado.");
                        }
                    }
                    else
                    {
                        ShowLoading(false);
                        //await DisplayAlert("Erro", "Resposta do servidor não é JSON válido.", "OK");
                        DependencyService.Get<IMessage>().LongAlert("Resposta do servidor não é JSON válido.");
                    }
                }
                else
                {
                    ShowLoading(false);
                    // Tratar erro de status HTTP não esperado
                    //await DisplayAlert("Erro", $"Erro ao carregar dados. StatusCode: {response.StatusCode}", "OK");
                    DependencyService.Get<IMessage>().LongAlert($"Erro ao carregar dados. StatusCode: {response.StatusCode}");
                }
            }
            catch (HttpRequestException httpEx)
            {
                ShowLoading(false);
                //await DisplayAlert("Erro", $"Erro de rede ao carregar dados: {httpEx.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Erro de rede ao carregar dados: {httpEx.Message}");
            }
            catch (JsonException jsonEx)
            {
                ShowLoading(false);
                //await DisplayAlert("Erro", $"Erro ao processar os dados recebidos: {jsonEx.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Erro ao processar os dados recebidos: {jsonEx.Message}");
            }
            catch (Exception ex)
            {
                ShowLoading(false);
                //await DisplayAlert("Erro", $"Falha ao carregar dados: {ex.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Falha ao carregar dados: {ex.Message}");
            }
            finally
            {
                ShowLoading(false);
            }
        }

        private bool IsJson(string input)
        {
            input = input.Trim();
            return input.StartsWith("{") && input.EndsWith("}") || input.StartsWith("[") && input.EndsWith("]");
        }

        // Método para capturar a foto ao clicar no botão
        private async void CapturarFoto_Clicked(object sender, EventArgs e)
        {
            try
            {
                var photo = await MediaPicker.CapturePhotoAsync();
                if (photo == null)
                    return;

                var nomeFoto = _verificaCargaDados.ID + "_BAIXA_PALETE";

                // Salvar o arquivo na memória local
                
                var newFile = Path.Combine(FileSystem.AppDataDirectory, $"{nomeFoto}.jpg");
                using (var stream = await photo.OpenReadAsync())
                using (var newStream = File.OpenWrite(newFile))
                    await stream.CopyToAsync(newStream);

                _photoPath = newFile;
                caminhoFotoEntry.Text = _photoPath;

                UploadImage(_photoPath);
                
                DependencyService.Get<IMessage>().LongAlert("Foto capturada com sucesso!");
            }
            catch (Exception ex)
            {
                DependencyService.Get<IMessage>().LongAlert($"Erro ao capturar foto: {ex.Message}");
            }
        }

        public void UploadImage(string localImagePath)
        {
            try
            {
                ShowLoading(true);

                // URL do servidor FTP (sem "ftp://")
                string ftpHost = "prosystem.dyndns-work.com";
                int ftpPort = 21; // Porta padrão do FTP

                // Caminho local do arquivo a ser enviado
                string localFilePath = localImagePath;
                // Caminho remoto no servidor FTP onde o arquivo será salvo
                string remoteFilePath = "/sistemas/sistemas-teste/Sagwin-NFE/ANEXOS/Paletes/" + Path.GetFileName(_photoPath);

                // Criar uma instância do FtpService
                var ftpService = new FtpService(ftpHost, ftpPort);

                // Chamar o método UploadFile
                bool uploadSuccess = ftpService.UploadFile(localFilePath, remoteFilePath);

                // Verificar o resultado
                if (uploadSuccess)
                {
                    DependencyService.Get<IMessage>().LongAlert("Arquivo enviado com sucesso!");
                }
                else
                {
                    DependencyService.Get<IMessage>().LongAlert("Falha ao enviar o arquivo.");
                }
            }
            catch (Exception ex)
            {
                DependencyService.Get<IMessage>().LongAlert($"Erro ao subir foto via FTP: {ex.Message}");
            }
            finally
            {
                ShowLoading(false);
            }
        }

        private async void GravarButton_Clicked(object sender, EventArgs e)
        {
            try
            {
                ShowLoading(true);                

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

                    bool success = await SendDataToServer(cargaId, quantidadeEntregue, quantidadeDevolvido, _photoPath);
                    if (success)
                    {
                        //await DisplayAlert("Sucesso", "Dados enviados com sucesso!", "OK");
                        DependencyService.Get<IMessage>().LongAlert("Dados enviados com sucesso!");
                        //await Shell.Current.GoToAsync("//CopaPalletPage");
                        //await Shell.Current.GoToAsync($"{nameof(CopaPalletPage)}");
                        await Shell.Current.GoToAsync("//CopaPalletPage");
                    }
                    else
                    {
                        ShowLoading(false);
                        //await DisplayAlert("Erro", "Falha ao enviar dados.", "OK");
                        DependencyService.Get<IMessage>().LongAlert("Falha ao enviar dados.");
                    }
                }
                else
                {
                    ShowLoading(false);
                    //await DisplayAlert("Erro", "Entradas inválidas.", "OK");
                    DependencyService.Get<IMessage>().LongAlert("Entradas inválidas.");
                }
            }
            catch (Exception ex)
            {
                ShowLoading(false);
                //await DisplayAlert("Erro", $"Ocorreu um erro: {ex.Message}", "OK");
                DependencyService.Get<IMessage>().LongAlert($"Ocorreu um erro: {ex.Message}");
            }
            finally {
                ShowLoading(false);
            }
        }

        private async Task<bool> SendDataToServer(int cargaId, int quantidadeEntregue, int quantidadeDevolvido, string photoPath)
        {
            var url = "http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/UPLoadArquivo/";

            try
            {
                ShowLoading(true);
                using (var client = new HttpClient())
                {
                    var nomeImagem = Path.GetFileName(_photoPath); //!= null ? Convert.ToBase64String(ReduceImageSize(photoPath)).Replace("/", ";") : null;
                    var data = new
                    {
                        cargaId,
                        quantidadeEntregue,
                        quantidadeDevolvido,
                        foto = nomeImagem
                    };

                    var json = JsonConvert.SerializeObject(data);

                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var response = await client.PostAsync(url, content);

                    if (response.IsSuccessStatusCode)
                    {
                        return true;
                    }
                    else
                    {
                        ShowLoading(false);
                        string errorMessage = await response.Content.ReadAsStringAsync();
                        DependencyService.Get<IMessage>().LongAlert($"Falha ao enviar dados. StatusCode: {response.StatusCode} Message: {errorMessage}");
                        return false;
                    }
                }
            }
            catch (HttpRequestException httpEx)
            {
                ShowLoading(false);
                DependencyService.Get<IMessage>().LongAlert($"Erro de rede ao enviar dados: {httpEx.Message}");
            }
            catch (TaskCanceledException timeoutEx)
            {
                ShowLoading(false);
                DependencyService.Get<IMessage>().LongAlert($"Tempo de solicitação esgotado: {timeoutEx.Message}");
            }
            catch (Exception ex)
            {
                ShowLoading(false);
                DependencyService.Get<IMessage>().LongAlert($"Erro ao enviar dados para o servidor: {ex.Message}");
            }
            finally {
                ShowLoading(false);
            }

            return false;
        }

        private byte[] ReduceImageSize(string photoPath)
        {
            using (var inputStream = File.OpenRead(photoPath))
            {
                using (var originalImage = SKBitmap.Decode(inputStream))
                {
                    var initialSize = new SKImageInfo(600, 600);
                    var resizedImage = originalImage.Resize(initialSize, SKFilterQuality.Medium);

                    int quality = 100;
                    byte[] imageBytes = null;

                    // Tenta diferentes qualidades e redimensionamentos
                    do
                    {
                        using (var ms = new MemoryStream())
                        {
                            using (var image = SKImage.FromBitmap(resizedImage))
                            {
                                var imageData = image.Encode(SKEncodedImageFormat.Jpeg, quality);
                                imageData.SaveTo(ms);
                                imageBytes = ms.ToArray();
                            }
                        }

                        quality -= 10;

                        if (quality < 10 && imageBytes.Length > 16000)
                        {
                            var newSize = new SKImageInfo((int)(initialSize.Width * 0.9), (int)(initialSize.Height * 0.9));
                            if (newSize.Width < 100 || newSize.Height < 100)
                            {
                                newSize = new SKImageInfo(100, 100);
                            }

                            resizedImage = originalImage.Resize(newSize, SKFilterQuality.Medium);
                            quality = 100;
                        }
                    }
                    while (imageBytes.Length > 16000 && (resizedImage.Width > 100 && resizedImage.Height > 100));

                    return imageBytes;
                }
            }
        }

        private void ShowLoading(bool show)
        {
            loadingOverlay.IsVisible = show;
            activityIndicator.IsRunning = show;
        }
    }
}
