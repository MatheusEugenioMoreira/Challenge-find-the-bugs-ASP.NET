using System;

namespace DTO
{
    class DTO_Usuario
    {
        private string email, senha;


        public int Id { get; set; }

        public string Email
        {
            set
            {
                if (value != string.Empty)
                {
                    this.email = value;
                }
                else
                {
                    throw new Exception("O e-mail é obrigatório.");
                }

            }
            get { return this.email; }
        }

        public string Senha
        {
            set
            {
                if (value != string.Empty)
                {
                    this.senha = value;
                }
                else
                {
                    throw new Exception("A senha é obrigatória.");
                }

            }
            get { return this.senha; }
        }
    }
}