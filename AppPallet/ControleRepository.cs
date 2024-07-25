using AppPallet.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppPallet
{
    class ControleRepository : IControleRepository
    {
        DatabaseHelper _databaseHelper;
        public ControleRepository()
        {
            _databaseHelper = new DatabaseHelper();
        }
        public void InsertLogin(Login login)
        {
            _databaseHelper.InsertLogin(login);
        }

        public void InsertLoginAcesso(LoginAcesso loginAcesso)
        {
            _databaseHelper.InsertLoginAcesso(loginAcesso);
        }
    }
}
