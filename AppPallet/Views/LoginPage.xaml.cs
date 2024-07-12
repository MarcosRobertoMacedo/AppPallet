using AppPallet.ViewModels;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
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

        public IPedidoRepository _pedidoRepository;


        public LoginPage()
        {
            InitializeComponent();
            this.BindingContext = new LoginViewModel();
        }

        protected void Login(object s, EventArgs e)
        {
            try
            {
                string login = maskedEditCNPJ.Value.ToString().Replace(".","").Replace("/", "").Replace("-", "");
                string passwd = maskedEditSenha.Value.ToString();

                AddLogin(login, passwd);
            }
            catch (Exception exc)
            {
                //Debug.WriteLine("EXCEPTION DEU ERRO! " + exc);
                //DependencyService.Get<IMessage>().LongAlert("Erro de conexão com o servidor!");
            }
        }

        async void AddLogin(string log, string pass)
        {
            //string url = "http://" + server + ":8080/datasnap/rest/TServerAPPecf/loginapp/"+log+"/"+pass;
            string url = "http://prosystem.dyndns-work.com:9090/datasnap/rest/TserverAPPnfe/LoginEmpresa/" + log;
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

                obj.codigo = trends[0].codigo;
                obj.empresa = trends[0].empresa;
                obj.servidor = trends[0].servidor;
                obj.porta = trends[0].porta;
                //obj.validado = trends[0].validado;

                string urlLoginAcesso = "http://" + obj.servidor + ":" + obj.porta + "/datasnap/rest/TserverAPPnfe/LoginPalete/"
                    + "MARCELI/IT1010";

                await AcessoLogin(urlLoginAcesso);
            }
            catch (Exception ey)
            {
                //Debug.WriteLine("DEBUG AQUI " + ey);
                //DependencyService.Get<IMessage>().LongAlert("Erro de conexão com o servidor!");
            }
        }

        async Task AcessoLogin(string urlLoginAcesso)
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

                // Por exemplo: atualize a interface do usuário ou armazene os dados em algum lugar
            }
            catch (Exception ex)
            {
                // Lide com exceções para a segunda chamada assíncrona
            }
        }
    }
}