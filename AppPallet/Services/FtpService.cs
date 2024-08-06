using FluentFTP;
using FluentFTP.Exceptions;
using System;
using System.IO;

namespace AppPallet.Services
{
    public class FtpService
    {
        private string _host;
        private int _port;

        public FtpService(string host, int port = 21)
        {
            _host = host;
            _port = port;
        }

        public bool UploadFile(string localFilePath, string remoteFilePath)
        {
            try
            {
                using (var ftpClient = new FtpClient(_host, _port))
                {
                    // Configurações adicionais
                    ftpClient.Config.ConnectTimeout = 10000; // Tempo de conexão de 10 segundos
                    ftpClient.Config.DataConnectionType = FtpDataConnectionType.PASV; // Modo PASV
                    ftpClient.Config.EncryptionMode = FtpEncryptionMode.None; // Sem criptografia

                    // Conectar ao servidor FTP
                    ftpClient.Connect();

                    // Verificar se o arquivo local existe antes de tentar o upload
                    if (!File.Exists(localFilePath))
                    {
                        Console.WriteLine("Arquivo local não encontrado.");
                        return false;
                    }

                    // Realizar o upload do arquivo
                    FtpStatus uploadStatus = ftpClient.UploadFile(localFilePath, remoteFilePath);

                    // Verificar o status do upload
                    if (uploadStatus == FtpStatus.Success)
                    {
                        Console.WriteLine("Arquivo enviado com sucesso!");
                        return true;
                    }
                    else
                    {
                        Console.WriteLine($"Falha ao enviar o arquivo: {uploadStatus}");
                        return false;
                    }
                }
            }
            catch (FtpCommandException ftpEx)
            {
                // Exceção do FluentFTP
                Console.WriteLine($"Erro no comando FTP: {ftpEx.Message}");
                return false;
            }
            catch (IOException ioEx)
            {
                // Exceção de I/O
                Console.WriteLine($"Erro de I/O: {ioEx.Message}");
                return false;
            }
            catch (Exception ex)
            {
                // Exceções gerais
                Console.WriteLine($"Erro geral: {ex.Message}");
                return false;
            }
        }
    }
}
