using AppPallet.ViewModels;
using AppPallet.Views;
using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace AppPallet
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public IControleRepository _controleRepository;

        public AppShell()
        {
            InitializeComponent();
            _controleRepository = new ControleRepository();
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
    }
}
