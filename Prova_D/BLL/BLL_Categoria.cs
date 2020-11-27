using System;
using System.Data;
using DAL;

namespace BLL
{
    class BLL_Categoria
    {
        Conexao bd = new Conexao();

        public DataTable ListarCategorias()
        {
            try
            {
                string comando = "SELECT * FROM categoria;";
                return bd.ExecutarConsulta(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }  
    }
}
