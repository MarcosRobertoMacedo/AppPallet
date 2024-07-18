using AppPallet.ViewModels;
using Newtonsoft.Json;
using Syncfusion.XForms.MaskedEdit;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
        // This handles the Web data request
        private HttpClient _client = new HttpClient();
        ObservableCollection<Login> trends { get; set; } = new ObservableCollection<Login>();
        ObservableCollection<LoginAcesso> trendsAcesso { get; set; } = new ObservableCollection<LoginAcesso>();

        public IControleRepository _controleRepository;

        // Método para validar o preenchimento do SfMaskedEdit
        private bool IsMaskedEditFilled(SfMaskedEdit maskedEdit)
        {
            // Verifica se o valor do SfMaskedEdit não é nulo e não está vazio
            return !string.IsNullOrEmpty(maskedEdit.Value?.ToString());
        }

        private async void Button_OnClicked(object sender, EventArgs e)
        {
            await ShowMessage("Dialog Title", "Prompt", "Ok", async () =>
            {
                await ShowMessage("OK was pressed", "Message", "OK", null);
            });

        }



        public async Task ShowMessage(string message,
            string title,
            string buttonText,
            Action afterHideCallback)
        {
            await DisplayAlert(
                title,
                message,
                buttonText);

            afterHideCallback?.Invoke();
        }

        public LoginPage()
        {
            InitializeComponent();

            VersionCode.Text = "Versão • " + DependencyService.Get<IAppVersionAndBuild>().GetVersionNumber();

            this.BindingContext = new LoginViewModel();

            
        }

        protected void Login(object s, EventArgs e)
        {
            try
            {
                string cnpj = "";
                string login = "";
                string passwd = "";

                string mensagemErro = "";

                //if (IsMaskedEditFilled(maskedEditCNPJ))
                //{
                //    cnpj = maskedEditCNPJ.Value.ToString().Replace(".", "").Replace("/", "").Replace("-", "");                    
                //}
                //else
                //{
                //    maskedEditCNPJ.ErrorBorderColor = Color.Red;
                //    mensagemErro = "O campo CNPJ deve ser preenchido! \n";
                //}

                //if (IsMaskedEditFilled(maskedEditLogin))
                //{
                //    cnpj = maskedEditLogin.Value.ToString().Replace(".", "").Replace("/", "").Replace("-", "");                   
                //}
                //else
                //{
                //    maskedEditLogin.ErrorBorderColor = Color.Red;
                //    mensagemErro = mensagemErro + "O campo Login deve ser preenchido! \n";
                //}

                //if (IsMaskedEditFilled(maskedEditSenha))
                //{
                //    cnpj = maskedEditSenha.Value.ToString().Replace(".", "").Replace("/", "").Replace("-", "");
                //}
                //else
                //{
                //    maskedEditSenha.ErrorBorderColor = Color.Red;
                //    mensagemErro = mensagemErro + "O campo Senha deve ser preenchido! \n";
                //}


                //if (!IsMaskedEditFilled(maskedEditCNPJ) || !IsMaskedEditFilled(maskedEditLogin) || !IsMaskedEditFilled(maskedEditSenha))
                //{
                //    DependencyService.Get<IMessage>().LongAlert(mensagemErro);
                //    //DisplayAlert("Validação", mensagemErro, "OK");
                //}
                //else
                //{
                //    AddLogin(cnpj, login, passwd);
                //}


                AddLogin("09334805000146", "MARCELI", "IT1010");
            }
            catch (Exception exc)
            {
                //Debug.WriteLine("EXCEPTION DEU ERRO! " + exc);
                DependencyService.Get<IMessage>().LongAlert("Erro de conexão com o servidor!");
            }
        }

        async void AddLogin(string cnpj, string log, string pass)
        {
            //string url = "http://" + server + ":8080/datasnap/rest/TServerAPPecf/loginapp/"+log+"/"+pass;
            string url = "http://prosystem.dyndns-work.com:9090/datasnap/rest/TserverAPPnfe/LoginEmpresa/" + cnpj;
            try
            {
                Login obj = new Login();
                //Activity indicator visibility on
                //activity_indicator.IsRunning = true;
                //Getting JSON data from the Web
                var content = await _client.GetStringAsync(url);
                //We deserialize the JSON data from this line
                var tr = JsonConvert.DeserializeObject<List<Login>>(content);
                //After deserializing , we store our data in the List called ObservableCollection
                trends = new ObservableCollection<Login>(tr);

                if (trends[0].codigo == "0")
                {
                    DependencyService.Get<IMessage>().LongAlert("Verifique se seu CNPJ esta correto e tente novamente!");
                }
                else
                {
                    obj.codigo = trends[0].codigo;
                    obj.login = log;
                    obj.empresa = trends[0].empresa;
                    obj.servidor = trends[0].servidor;
                    obj.porta = trends[0].porta;
                    obj.cnpj = cnpj;
                    obj.senha = pass;

                    string urlLoginAcesso = "http://" + obj.servidor + ":" + obj.porta + "/datasnap/rest/TserverAPPnfe/LoginPalete/"
                        + obj.login + "/" + obj.senha;

                    await AcessoLogin(urlLoginAcesso, log, pass);
                }
            }
            catch (Exception ey)
            {
                //Debug.WriteLine("DEBUG AQUI " + ey);
                DependencyService.Get<IMessage>().LongAlert("Erro de conexão com o servidor!");
            }
        }

        async Task AcessoLogin(string urlLoginAcesso, string log, string pass)
        {
            
            LoginAcesso obj = new LoginAcesso();
            
            try
            {
                //Getting JSON data from the Web
                var response = await _client.GetStringAsync(urlLoginAcesso);
                //We deserialize the JSON data from this line
                var result = JsonConvert.DeserializeObject< List<LoginAcesso>>(response);

                //After deserializing , we store our data in the List called ObservableCollection
                trendsAcesso = new ObservableCollection<LoginAcesso>(result);

                obj.codigo = trendsAcesso[0].codigo;
                obj.validado = trendsAcesso[0].validado;
                obj.empresa = trendsAcesso[0].empresa;
                obj.id_Placa = trendsAcesso[0].id_Placa;
                obj.placa = trendsAcesso[0].placa;
                obj.equipe = trendsAcesso[0].equipe;

                if (String.IsNullOrEmpty(log) || String.IsNullOrEmpty(pass) || trendsAcesso[0].validado == "F")
                {
                    DependencyService.Get<IMessage>().LongAlert("Login ou senha inválidos");
                }
                else
                {
                    DependencyService.Get<IMessage>().LongAlert("Bem vindo " + log);

                    _controleRepository.InsertLoginAcesso(obj);

                    Preferences.Set("login", "true");

                    App.Current.MainPage = new Views.BaixaPalletPage();
                }
            }
            catch (Exception ex)
            {
                // Lide com exceções para a segunda chamada assíncrona
            }
        }
    }
}