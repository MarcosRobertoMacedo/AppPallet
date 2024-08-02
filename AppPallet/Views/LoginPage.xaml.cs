using AppPallet.Models;
using AppPallet.ViewModels;
using Newtonsoft.Json;
using Syncfusion.XForms.MaskedEdit;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppPallet.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        private readonly HttpClient _client = new HttpClient();
        ObservableCollection<Login> login { get; set; } = new ObservableCollection<Login>();
        ObservableCollection<LoginAcesso> loginAcesso { get; set; } = new ObservableCollection<LoginAcesso>();

        public IControleRepository _controleRepository;

        public LoginPage()
        {
            InitializeComponent();
            _controleRepository = new ControleRepository();
            VersionCode.Text = "Versão • " + DependencyService.Get<IAppVersionAndBuild>().GetVersionNumber();
            this.BindingContext = new LoginViewModel();
        }

        private bool IsMaskedEditFilled(SfMaskedEdit maskedEdit)
        {
            return !string.IsNullOrEmpty(maskedEdit.Value?.ToString());
        }

        private async void Button_OnClicked(object sender, EventArgs e)
        {
            await ShowMessage("Dialog Title", "Prompt", "Ok", async () =>
            {
                await ShowMessage("OK was pressed", "Message", "OK", null);
            });
        }

        public async Task ShowMessage(string message, string title, string buttonText, Action afterHideCallback)
        {
            await DisplayAlert(title, message, buttonText);
            afterHideCallback?.Invoke();
        }

        protected async void Login(object s, EventArgs e)
        {
            try
            {
                string cnpj = "09334805000146";
                string login = "MARCELI";
                string passwd = "IT1010";

                ShowLoading(true);

                await AddLogin(cnpj, login, passwd);
            }
            catch (Exception exc)
            {
                Debug.WriteLine("DEBUG: " + exc.Message);
                DependencyService.Get<IMessage>().LongAlert("Erro de conexão com o servidor!");
            }
            finally
            {
                ShowLoading(false);
            }
        }

        async Task AddLogin(string cnpj, string log, string pass)
        {
            string url = $"http://prosystem.dyndns-work.com:9090/datasnap/rest/TserverAPPnfe/LoginEmpresa/{cnpj}";
            try
            {
                ShowLoading(true);

                var content = await _client.GetStringAsync(url);
                var tr = JsonConvert.DeserializeObject<List<Login>>(content);
                login = new ObservableCollection<Login>(tr);

                if (login.Count == 0 || login[0].codigo == "0")
                {
                    DependencyService.Get<IMessage>().LongAlert("Verifique se seu CNPJ está correto e tente novamente!");
                    return;
                }

                var obj = login[0];
                obj.login = log;
                obj.senha = pass;

                string urlLoginAcesso = $"http://{obj.servidor}:{obj.porta}/datasnap/rest/TserverAPPnfe/LoginPalete/{obj.login}/{obj.senha}";

                _controleRepository.InsertLogin(obj);
                DadosServicos.Instance.LoginDados = obj;

                await AcessoLogin(urlLoginAcesso, log, pass);
            }
            catch (HttpRequestException httpEx)
            {
                Debug.WriteLine("DEBUG (HttpRequestException): " + httpEx.Message);
                DependencyService.Get<IMessage>().LongAlert("Erro de conexão com o servidor!");
            }
            catch (Exception ex)
            {
                Debug.WriteLine("DEBUG: " + ex.Message);
                DependencyService.Get<IMessage>().LongAlert("Erro ao processar os dados!");
            }
            finally
            {
                ShowLoading(false);
            }
        }

        async Task AcessoLogin(string urlLoginAcesso, string log, string pass)
        {
            try
            {
                ShowLoading(true);

                var response = await _client.GetStringAsync(urlLoginAcesso);
                var result = JsonConvert.DeserializeObject<List<LoginAcesso>>(response);
                loginAcesso = new ObservableCollection<LoginAcesso>(result);

                if (loginAcesso.Count == 0 || string.IsNullOrEmpty(log) || string.IsNullOrEmpty(pass) || loginAcesso[0].validado == "F")
                {
                    DependencyService.Get<IMessage>().LongAlert("Login ou senha inválidos");
                    return;
                }

                var obj = loginAcesso[0];
                DependencyService.Get<IMessage>().LongAlert($"Bem vindo {log}");

                _controleRepository.InsertLoginAcesso(obj);
                //Preferences.Set("LoginAcesso", response);
                DadosServicos.Instance.AcessoDados = obj;

                await Shell.Current.GoToAsync($"//{nameof(CopaPalletPage)}");
            }
            catch (HttpRequestException httpEx)
            {
                Debug.WriteLine("DEBUG (HttpRequestException): " + httpEx.Message);
                DependencyService.Get<IMessage>().LongAlert("Erro de conexão com o servidor!");
            }
            catch (Exception ex)
            {
                Debug.WriteLine("DEBUG: " + ex.Message);
                DependencyService.Get<IMessage>().LongAlert("Erro ao processar os dados!");
            }
            finally
            {
                ShowLoading(false);
            }
        }

        private void ShowLoading(bool show)
        {
            loadingOverlay.IsVisible = show;
            activityIndicator.IsRunning = show;
        }
    }
}
