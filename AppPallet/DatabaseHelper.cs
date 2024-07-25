using System;
using System.Collections.Generic;
using System.Text;
using AppPallet.Models;
using PCLExt.FileStorage;
using PCLExt.FileStorage.Folders;
using SQLite;


namespace AppPallet
{
    class DatabaseHelper
    {
        //defina uma conexao e o  nome do banco de dados
        static SQLiteConnection sqliteconnection;
        public string DbFileName = "PalletDB.db";

        public DatabaseHelper()
        {
            //cria uma pasta base local para o dispositivo
            var pasta = new LocalRootFolder();
            //cria o arquivo
            var arquivo = pasta.CreateFile(DbFileName, CreationCollisionOption.OpenIfExists);
            //abre o BD
            sqliteconnection = new SQLiteConnection(arquivo.Path);

            //cria a tabela no BD
            sqliteconnection.CreateTable<Login>();
            sqliteconnection.CreateTable<LoginAcesso>();
            //sqliteconnection.CreateTable<ConsultaPedido>();
            //sqliteconnection.CreateTable<SavingClass>();
        }


        // Inserir dados
        public void InsertLogin(Login login)
        {
            sqliteconnection.Insert(login);
        }
        public void InsertLoginAcesso(LoginAcesso loginAcesso)
        {
            sqliteconnection.Insert(loginAcesso);
        }
    }
}
