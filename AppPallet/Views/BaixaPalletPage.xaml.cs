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
using Plugin.Media;
using Plugin.Media.Abstractions;

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

        private FtpService ftpService;

        // Convert the image to a byte array
        byte[] imageBytes;

        private string _url = "http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe";

        public BaixaPalletPage()
        {
            InitializeComponent();
            _controleRepository = new ControleRepository();
            ftpService = new FtpService();
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
            string url = _url + $"/VerificaCarga/{_acessoDados.empresa}/{_acessoDados.codigo}";

            try
            {
                HttpResponseMessage response = await _client.GetAsync(url);

                if (response.IsSuccessStatusCode)
                {
                    string jsonResponse = await response.Content.ReadAsStringAsync();
                    Console.WriteLine($"Resposta recebida: {jsonResponse}");

                    if (IsJson(jsonResponse))
                    {
                        var verificaCargaList = JsonConvert.DeserializeObject<List<VerificaCarga>>(jsonResponse);

                        if (verificaCargaList != null && verificaCargaList.Count > 0)
                        {
                            var data = verificaCargaList[0];

                            if (data.ID == "0" || data.DATA == "0")
                            {
                                // Redireciona para CopaPalletPage
                                await Shell.Current.GoToAsync("//CopaPalletPage");
                                return;
                            }

                            if (DateTime.TryParse(data.DATA, out DateTime parsedDate))
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
                            DependencyService.Get<IMessage>().LongAlert("Nenhum dado encontrado.");
                        }
                    }
                    else
                    {
                        ShowLoading(false);
                        DependencyService.Get<IMessage>().LongAlert("Resposta do servidor não é JSON válido.");
                    }
                }
                else
                {
                    ShowLoading(false);
                    DependencyService.Get<IMessage>().LongAlert($"Erro ao carregar dados. StatusCode: {response.StatusCode}");
                }
            }
            catch (HttpRequestException httpEx)
            {
                ShowLoading(false);
                DependencyService.Get<IMessage>().LongAlert($"Erro de rede ao carregar dados: {httpEx.Message}");
            }
            catch (JsonException jsonEx)
            {
                ShowLoading(false);
                DependencyService.Get<IMessage>().LongAlert($"Erro ao processar os dados recebidos: {jsonEx.Message}");
            }
            catch (Exception ex)
            {
                ShowLoading(false);
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

        #region Enviar Foto Json
        private async void TirarFoto_Clicked(object sender, EventArgs e) { await TakePhotoAsync(); }
        private async Task TakePhotoAsync()
        {
            await CrossMedia.Current.Initialize();

            if (!CrossMedia.Current.IsCameraAvailable || !CrossMedia.Current.IsTakePhotoSupported)
            {
                await App.Current.MainPage.DisplayAlert("No Camera", "No camera available.", "OK");
                return;
            }

            var file = await CrossMedia.Current.TakePhotoAsync(new StoreCameraMediaOptions
            {
                Directory = "Sample",
                Name = "Baixa_Pallet.jpg"
            });

            if (file == null)
                return;

            // Set the photo path to the file path
            caminhoFotoEntry.Text = file.Path;


            using (var memoryStream = new MemoryStream())
            {
                file.GetStream().CopyTo(memoryStream);
                imageBytes = memoryStream.ToArray();
            }
        }
        private async void GravarButton_Clicked(object sender, EventArgs e)
        {
            try
            {
                ShowLoading(true);

                if (_verificaCargaDados == null)
                {
                    DependencyService.Get<IMessage>().LongAlert("Dados da carga não encontrados.");
                    return;
                }

                if (int.TryParse(entregaEntry.Text, out int quantidadeEntregue) &&
                    int.TryParse(devolucaoEntry.Text, out int quantidadeDevolvido) &&
                    int.TryParse(_verificaCargaDados.ID, out int cargaId))
                {
                    Console.WriteLine($"Carga ID: {cargaId}, Quantidade Entregue: {quantidadeEntregue}, Quantidade Devolvido: {quantidadeDevolvido}");

                    //bool success = await SendMultiPartDataToServer(cargaId, quantidadeEntregue, quantidadeDevolvido, _photoPath);

                    //Enviar Json
                    bool success = await UploadImageAsync(cargaId, quantidadeEntregue, quantidadeDevolvido, imageBytes);

                    if (success)
                    {
                        DependencyService.Get<IMessage>().LongAlert("Dados enviados com sucesso!");
                        clearBaixaPallet();
                        await Shell.Current.GoToAsync("//CopaPalletPage");
                    }
                    else
                    {
                        ShowLoading(false);
                        DependencyService.Get<IMessage>().LongAlert("Falha ao enviar dados.");
                    }
                }
                else
                {
                    ShowLoading(false);
                    DependencyService.Get<IMessage>().LongAlert("Entradas inválidas.");
                }
            }
            catch (Exception ex)
            {
                ShowLoading(false);
                DependencyService.Get<IMessage>().LongAlert($"Ocorreu um erro: {ex.Message}");
            }
            finally
            {
                ShowLoading(false);
            }
        }
        private async Task<bool> UploadImageAsync(int cargaId, int quantidadeEntregue, int quantidadeDevolvido, byte[] imageBytes)
        {
            if (imageBytes == null || imageBytes.Length == 0)
            {
                await App.Current.MainPage.DisplayAlert("Error", "Image data is invalid or empty.", "OK");
                return false;
            }

            if (cargaId <= 0 || quantidadeEntregue < 0 || quantidadeDevolvido < 0)
            {
                await App.Current.MainPage.DisplayAlert("Error", "Invalid input data.", "OK");
                return false;
            }

            try
            {
                // Convertendo a imagem para Base64
                //var base64Image = Convert.ToBase64String(imageBytes);
                var base64Image = await CompressAndConvertImageToBase64(imageBytes);

                // Calculando o tamanho da string Base64 em bytes
                int base64ImageSizeInBytes = System.Text.Encoding.UTF8.GetByteCount(base64Image);

                // Calcula o tamanho em megabytes
                double sizeInMb = base64ImageSizeInBytes / (1024.0 * 1024.0);

                // Exibindo o tamanho da imagem convertida
                Console.WriteLine($"Base64 image size: {base64ImageSizeInBytes} bytes");

                // Checando se o tamanho é aceitável (opcional)
                if (base64ImageSizeInBytes > 5000000) // Por exemplo, limite de 5MB
                {
                    await App.Current.MainPage.DisplayAlert("Error", "The image is too large.", "OK");
                    return false;
                }

                var content = new
                {
                    CargaId = cargaId,
                    QuantidadeEntregue = quantidadeEntregue,
                    QuantidadeDevolvido = quantidadeDevolvido,
                    Foto = base64Image
                };

                var json = Newtonsoft.Json.JsonConvert.SerializeObject(content);
                var httpContent = new StringContent(json, System.Text.Encoding.UTF8, "application/json");

                using (var httpClient = new HttpClient())
                {
                    httpClient.Timeout = TimeSpan.FromSeconds(30); // Define um timeout para a requisição
                    //var response = await httpClient.PostAsync("http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/UPLoadArquivo/", httpContent);

                    var encodedImage = Uri.EscapeDataString(base64Image);
                    var url = _url + $"/UPLoadArquivo/{cargaId}/{quantidadeEntregue}/{quantidadeEntregue}/{encodedImage}";

                    var response = await httpClient.PostAsync(url, null);
                    if (response.IsSuccessStatusCode)
                    {
                        await App.Current.MainPage.DisplayAlert("Success", "Image uploaded successfully!", "OK");
                        return true;
                    }
                    else
                    {
                        var errorMessage = await response.Content.ReadAsStringAsync();
                        await App.Current.MainPage.DisplayAlert("Error", $"Failed to upload image. Status: {response.StatusCode}, Message: {errorMessage}", "OK");
                        return false;
                    }
                }
            }
            catch (HttpRequestException httpEx)
            {
                await App.Current.MainPage.DisplayAlert("Network Error", $"A network error occurred: {httpEx.Message}", "OK");
                return false;
            }
            catch (TaskCanceledException timeoutEx)
            {
                await App.Current.MainPage.DisplayAlert("Timeout Error", $"The request timed out: {timeoutEx.Message}", "OK");
                return false;
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Error", $"An unexpected error occurred: {ex.Message}", "OK");
                return false;
            }
        }
        public async Task<string> CompressAndConvertImageToBase64(byte[] imageBytes, int maxWidth = 300, int maxHeight = 300)
        {
            using (var inputStream = new MemoryStream(imageBytes))
            {
                using (var originalBitmap = SKBitmap.Decode(inputStream))
                {
                    var scale = Math.Min((float)maxWidth / originalBitmap.Width, (float)maxHeight / originalBitmap.Height);
                    var newWidth = (int)(originalBitmap.Width * scale);
                    var newHeight = (int)(originalBitmap.Height * scale);

                    using (var resizedBitmap = originalBitmap.Resize(new SKImageInfo(newWidth, newHeight), SKFilterQuality.High))
                    {
                        using (var image = SKImage.FromBitmap(resizedBitmap))
                        {
                            using (var outputStream = new MemoryStream())
                            {
                                var imageData = image.Encode(SKEncodedImageFormat.Jpeg, 75); // 75 é a qualidade de compressão
                                imageData.SaveTo(outputStream);
                                var compressedImageBytes = outputStream.ToArray();
                                var base64Image = Convert.ToBase64String(compressedImageBytes);

                                // Calculando o tamanho da string Base64 em bytes
                                int base64ImageSizeInBytes = System.Text.Encoding.UTF8.GetByteCount(base64Image);

                                // Calcula o tamanho em megabytes
                                double sizeInMb = base64ImageSizeInBytes / (1024.0 * 1024.0);

                                // Verifique o tamanho do Base64 para garantir que está dentro do limite
                                if (base64Image.Length > 16000)
                                {
                                    throw new Exception("Imagem excede o tamanho máximo permitido após compressão.");
                                }

                                return base64Image;
                            }
                        }
                    }
                }
            }
        }
        #endregion

        private void ShowLoading(bool show)
        {
            loadingOverlay.IsVisible = show;
            activityIndicator.IsRunning = show;
        }
        private void clearBaixaPallet()
        {
            caminhoFotoEntry.Text = string.Empty;
            imageBytes = new byte[0];
            _photoPath = "";
        }

        #region EnvioFotoMulitPart
        private async void CapturarFoto_Clicked(object sender, EventArgs e)
        {
            try
            {
                var photo = await MediaPicker.CapturePhotoAsync();
                if (photo == null)
                    return;

                var nomeFoto = _verificaCargaDados.ID + "_BAIXA_PALETE";

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
        public async void UploadImage(string localImagePath)
        {
            try
            {
                ShowLoading(true);

                var filePath = localImagePath;
                await ftpService.UploadFileAsync(filePath, this);
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
        private async Task<bool> SendMultiPartDataToServer(int cargaId, int quantidadeEntregue, int quantidadeDevolvido, string photoPath)
        {
            var url = _url + "/UPLoadArquivo/";

            try
            {
                ShowLoading(true);
                using (var client = new HttpClient())
                {
                    using (var content = new MultipartFormDataContent())
                    {
                        // Adicionar os dados
                        content.Add(new StringContent(cargaId.ToString()), "cargaId");
                        content.Add(new StringContent(quantidadeEntregue.ToString()), "quantidadeEntregue");
                        content.Add(new StringContent(quantidadeDevolvido.ToString()), "quantidadeDevolvido");

                        // Adicionar a foto
                        if (!string.IsNullOrEmpty(photoPath) && File.Exists(photoPath))
                        {
                            var fileStream = new FileStream(photoPath, FileMode.Open, FileAccess.Read);
                            var streamContent = new StreamContent(fileStream);
                            streamContent.Headers.ContentType = new MediaTypeHeaderValue("image/jpeg");
                            content.Add(streamContent, "foto", Path.GetFileName(photoPath));
                        }

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
            finally
            {
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
                    } while (imageBytes.Length > 16000 && (resizedImage.Width > 100 && resizedImage.Height > 100));

                    return imageBytes;
                }
            }
        }
        #endregion
    }
}
