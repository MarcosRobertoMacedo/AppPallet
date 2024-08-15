using AppPallet.ViewModels;
using AppPallet.Views;
using System;
using System.Collections.Generic;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace AppPallet
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public IControleRepository _controleRepository;
        public Command OpenMenuCommand { get; }

        public AppShell()
        {
            InitializeComponent();

            // Registre as rotas manualmente
            //Routing.RegisterRoute("CopaPalletPage", typeof(CopaPalletPage));
            //Routing.RegisterRoute("BaixaPalletPage", typeof(BaixaPalletPage));

           //string userName = Preferences.Get("UserName", null); // Recupere o nome do usuário
           // ((Label)this.FindByName("FlyoutHeaderLabel")).Text = $"Oi, {userName}";

            _controleRepository = new ControleRepository();
            OpenMenuCommand = new Command(() => Current.FlyoutIsPresented = true);
        }

        private void OnMenuIconClicked(object sender, EventArgs e)
        {
            // Abre o menu Flyout
            FlyoutIsPresented = !FlyoutIsPresented;
        }

        private async void OnMenuItemClicked(object sender, EventArgs e)
        {
            try
            {
                _controleRepository.DeleteAllLogin();
                _controleRepository.DeleteAllLoginAcesso();
                _controleRepository.DeleteAllVerificaCarga();
                await Shell.Current.GoToAsync("//LoginPage");
            }
            catch (Exception)
            {

                throw;
            }

        }

        private async void OnCopaPalletsClicked(object sender, EventArgs e)
        {
            //await Shell.Current.GoToAsync("//CopaPalletPage");
        }

        private async void OnBaixaPalletsClicked(object sender, EventArgs e)
        {
            //await Shell.Current.GoToAsync("//BaixaPalletPage");
        }
    }
}
