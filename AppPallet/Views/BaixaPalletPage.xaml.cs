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

        // Método para capturar a foto ao clicar no botão
        private async void CapturarFoto_Clicked(object sender, EventArgs e)
        {
            try
            {
                var photo = await MediaPicker.CapturePhotoAsync();
                if (photo == null)
                    return;

                // Salvar o arquivo na memória local
                var newFile = Path.Combine(FileSystem.AppDataDirectory, $"{Path.GetRandomFileName()}.jpg");
                using (var stream = await photo.OpenReadAsync())
                using (var newStream = File.OpenWrite(newFile))
                    await stream.CopyToAsync(newStream);

                _photoPath = newFile;

                // Atualizar UI ou notificar usuário que a foto foi capturada
                DependencyService.Get<IMessage>().LongAlert("Foto capturada com sucesso!");
            }
            catch (Exception ex)
            {
                DependencyService.Get<IMessage>().LongAlert($"Erro ao capturar foto: {ex.Message}");
            }
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


        private async Task<bool> SendDataToServer(int cargaId, int quantidadeEntregue, int quantidadeDevolvido, string photoPath)
        {
            var url = "http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/UPLoadArquivo/";

            try
            {
                using (var client = new HttpClient())
                {
                    var data = new
                    {
                        cargaId,
                        quantidadeEntregue,
                        quantidadeDevolvido,
                        foto = photoPath != null ? Convert.ToBase64String(ReduceImageSize(photoPath)) : null
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
                        string errorMessage = await response.Content.ReadAsStringAsync();
                        DependencyService.Get<IMessage>().LongAlert($"Falha ao enviar dados. StatusCode: {response.StatusCode} Message: {errorMessage}");
                        return false;
                    }
                }
            }
            catch (HttpRequestException httpEx)
            {
                DependencyService.Get<IMessage>().LongAlert($"Erro de rede ao enviar dados: {httpEx.Message}");
            }
            catch (TaskCanceledException timeoutEx)
            {
                DependencyService.Get<IMessage>().LongAlert($"Tempo de solicitação esgotado: {timeoutEx.Message}");
            }
            catch (Exception ex)
            {
                DependencyService.Get<IMessage>().LongAlert($"Erro ao enviar dados para o servidor: {ex.Message}");
            }

            return false;
        }
        private byte[] ReduceImageSize(string photoPath)
        {
            using (var inputStream = File.OpenRead(photoPath))
            {
                // Decodifica a imagem original
                using (var originalImage = SKBitmap.Decode(inputStream))
                {
                    // Define o tamanho de redimensionamento
                    var newSize = new SKImageInfo(1000, 1000); // Ajuste conforme necessário
                    var resizedImage = originalImage.Resize(newSize, SKFilterQuality.Medium);

                    using (var ms = new MemoryStream())
                    {
                        // Cria uma imagem SKImage a partir da imagem redimensionada
                        using (var image = SKImage.FromBitmap(resizedImage))
                        {
                            // Codifica a imagem em formato JPEG com qualidade reduzida
                            var imageData = image.Encode(SKEncodedImageFormat.Jpeg, 50); // Ajuste a qualidade conforme necessário
                            imageData.SaveTo(ms);
                        }
                        return ms.ToArray();
                    }
                }
            }
        }

        //private async Task<bool> SendDataToServer(int cargaId, int quantidadeEntregue, int quantidadeDevolvido, string photoPath)
        //{
        //    var url = "http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/UPLoadArquivo";

        //    try
        //    {
        //        using (var form = new MultipartFormDataContent())
        //        {
        //            // Adiciona os parâmetros de dados
        //            form.Add(new StringContent(cargaId.ToString()), "cargaId");
        //            form.Add(new StringContent(quantidadeEntregue.ToString()), "quantidadeEntregue");
        //            form.Add(new StringContent(quantidadeDevolvido.ToString()), "quantidadeDevolvido");                    

        //            // Adiciona a foto
        //            if (!string.IsNullOrEmpty(photoPath))
        //            {
        //                var photoBytes = File.ReadAllBytes(photoPath);
        //                var photoContent = new ByteArrayContent(photoBytes);
        //                photoContent.Headers.ContentType = new MediaTypeHeaderValue("image/jpeg"); // Ajuste o tipo de mídia conforme necessário
        //                form.Add(photoContent, "foto", Path.GetFileName(photoPath));
        //            }

        //            // Mostrar o conteúdo da solicitação antes de enviar
        //            await LogMultipartFormDataContentAsync(form);

        //            var response = await _client.PostAsync(url, form);
        //            if (response.IsSuccessStatusCode)
        //            {
        //                return true;
        //            }
        //            else
        //            {
        //                string errorMessage = await response.Content.ReadAsStringAsync();
        //                DependencyService.Get<IMessage>().LongAlert($"Falha ao enviar dados. StatusCode: {response.StatusCode} Message: {errorMessage}");
        //                return false;
        //            }
        //        }
        //    }
        //    catch (HttpRequestException httpEx)
        //    {
        //        DependencyService.Get<IMessage>().LongAlert($"Erro de rede ao enviar dados: {httpEx.Message}");
        //    }
        //    catch (TaskCanceledException timeoutEx)
        //    {
        //        DependencyService.Get<IMessage>().LongAlert($"Tempo de solicitação esgotado: {timeoutEx.Message}");
        //    }
        //    catch (Exception ex)
        //    {
        //        DependencyService.Get<IMessage>().LongAlert($"Erro ao enviar dados para o servidor: {ex.Message}");
        //    }

        //    return false;
        //}

        //private async Task LogMultipartFormDataContentAsync(MultipartFormDataContent content)
        //{
        //    foreach (var part in content)
        //    {
        //        var contentDisposition = part.Headers.ContentDisposition;
        //        var name = contentDisposition.Name.Trim('"');
        //        var fileName = contentDisposition.FileName?.Trim('"');
        //        var mediaType = part.Headers.ContentType?.MediaType;

        //        Console.WriteLine($"Content Name: {name}");
        //        Console.WriteLine($"File Name: {fileName}");
        //        Console.WriteLine($"Media Type: {mediaType}");

        //        if (name == "foto" && fileName != null)
        //        {
        //            // Read file content and log it
        //            var fileContent = await part.ReadAsByteArrayAsync();
        //            Console.WriteLine($"File Size: {fileContent.Length} bytes");
        //        }
        //        else
        //        {
        //            var stringContent = await part.ReadAsStringAsync();
        //            Console.WriteLine($"Content: {stringContent}");
        //        }
        //    }
        //}



        //private async Task<bool> SendDataToServer(int cargaId, int quantidadeEntregue, int quantidadeDevolvido)
        //{
        //    var url = $"http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/GravaPaletes/{cargaId}/{quantidadeEntregue}/{quantidadeDevolvido}/{_photoPath}";

        //    try
        //    {
        //        Console.WriteLine($"URL being called: {url}");

        //        var request = new HttpRequestMessage(HttpMethod.Post, url);

        //        // Add any necessary headers here
        //        request.Headers.Add("User-Agent", "XamarinApp");

        //        // Ler a foto como bytes e converter para Base64
        //        if (_photoPath != null)
        //        {
        //            var photoBytes = File.ReadAllBytes(_photoPath);
        //            var base64Photo = Convert.ToBase64String(photoBytes);

        //            var dataToSend = new
        //            {
        //                Foto = base64Photo
        //            };

        //            var json = JsonConvert.SerializeObject(dataToSend);
        //            var content = new StringContent(json, Encoding.UTF8, "application/json");

        //            request.Content = content;
        //        }

        //        var response = await _client.SendAsync(request);
        //        if (response.IsSuccessStatusCode)
        //        {
        //            return true;
        //        }
        //        else
        //        {
        //            string errorMessage = await response.Content.ReadAsStringAsync();
        //            //await DisplayAlert("Erro", $"Falha ao enviar dados. StatusCode: {response.StatusCode}, Message: {errorMessage}", "OK");
        //            DependencyService.Get<IMessage>().LongAlert($"Falha ao enviar dados. StatusCode: {response.StatusCode} Message: {errorMessage}");
        //            return false;
        //        }
        //    }
        //    catch (HttpRequestException httpEx)
        //    {
        //        //await DisplayAlert("Erro", $"Erro de rede ao enviar dados: {httpEx.Message}", "OK");
        //        DependencyService.Get<IMessage>().LongAlert($"Erro de rede ao enviar dados: {httpEx.Message}");
        //    }
        //    catch (TaskCanceledException timeoutEx)
        //    {
        //        //await DisplayAlert("Erro", $"Tempo de solicitação esgotado: {timeoutEx.Message}", "OK");
        //        DependencyService.Get<IMessage>().LongAlert($"Tempo de solicitação esgotado: {timeoutEx.Message}");
        //    }
        //    catch (Exception ex)
        //    {
        //        //await DisplayAlert("Erro", $"Erro ao enviar dados para o servidor: {ex.Message}", "OK");
        //        DependencyService.Get<IMessage>().LongAlert($"Erro ao enviar dados para o servidor: {ex.Message}");
        //    }

        //    return false;
        //}
    }
}
