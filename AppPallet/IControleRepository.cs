using AppPallet.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppPallet
{
    public interface IControleRepository
    {
        void InsertLogin(Login login);

        void InsertLoginAcesso(LoginAcesso loginAcesso);
    }
}
