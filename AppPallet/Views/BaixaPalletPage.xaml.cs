using AppPallet.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net.Http;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppPallet.Views
{
    public partial class BaixaPalletPage : ContentPage
    {
        public LoginAcessoPreferenciasServicos _loginAcessoPreferenciasServicos;

        public BaixaPalletPage()
        {
            InitializeComponent();
            _loginAcessoPreferenciasServicos = new LoginAcessoPreferenciasServicos();

            var user = _loginAcessoPreferenciasServicos.LoadUser();
            if (user != null)
            {
                //UserLabel.Text = $"Name: {user.Name}\nAge: {user.Age}";
            }
            else
            {
                //UserLabel.Text = "No user data found.";
            }

            LoadData();
        }

        private async void LoadData()
        {


            var dados = Preferences.Get("result", string.Empty);

        
            //url certa
            //string url = "http://prosystem5.masterdaweb.net:8081/datasnap/rest/TserverAPPnfe/VerificaCarga/1/9";
            
            //url teste
            string url = "http://prosystem.dyndns-work.com:8081/datasnap/rest/TserverAPPnfe/VerificaCarga/1/8";
            
            using (HttpClient client = new HttpClient())
            {
                try
                {


                    string jsonResponse = await client.GetStringAsync(url);
                    List<VerificaCargaResponse> response = JsonConvert.DeserializeObject<List<VerificaCargaResponse>>(jsonResponse);

                    if (response != null && response.Count > 0)
                    {
                        var data = response[0];

                        // Parse the date from the string
                        DateTime parsedDate;
                        if (DateTime.TryParse(data.DATA, out parsedDate))
                        {
                            dataDatePicker.Date = parsedDate;
                        }

                        placaEntry.Text = data.PLACA;
                        entregaEntry.Text = data.QUANT;
                        devolucaoEntry.Text = data.QUANTDV;
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Erro", "Falha ao carregar dados: " + ex.Message, "OK");
                }
            }
        }
    }
}