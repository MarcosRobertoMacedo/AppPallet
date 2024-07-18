using AppPallet.Services;
using AppPallet.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppPallet
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

            DependencyService.Register<IMessageService, MessageService>();
            MainPage = new AppShell();
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
