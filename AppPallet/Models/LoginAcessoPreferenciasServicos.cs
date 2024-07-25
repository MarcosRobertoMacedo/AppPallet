using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Essentials;

namespace AppPallet.Models
{
    public class LoginAcessoPreferenciasServicos
    {
        private const string LoginAcesso = "login_acesso";

        // Salva a instância de User nas preferências
        public void SaveUser(LoginAcesso user)
        {
            var json = JsonConvert.SerializeObject(user);
            Preferences.Set(LoginAcesso, json);
        }

        // Carrega a instância de User das preferências
        public LoginAcesso LoadUser()
        {
            var json = Preferences.Get(LoginAcesso, string.Empty);
            if (string.IsNullOrEmpty(json))
            {
                return null;
            }

            return JsonConvert.DeserializeObject<LoginAcesso>(json);
        }
    }
}
