using System;
using DTO;
using DAL;
using System.Data;

namespace BLL
{
    class BLL_Produto
    {
        Conexao bd = new Conexao();
        public void InserirNovoProduto(DTO_Produto produto)
        {
            try
            {
                string comando = "INSERT * INTO produto VALUES (NULL, '" + produto.Descricao + "','" 
                                                                       + produto.Idcategoria + "','"
                                                                       + produto.QuantEstocada + "','"
                                                                       + produto.Unidade + "','"
                                                                       + produto.Lote + "','"
                                                                       + produto.Dtvalidade.ToString("yyyy/MM/dd") + "');";

                bd.ExecutarComandos(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
       
        public void ExcluirProduto(DTO_Produto produto)
        {
            try
            {
                string comando = "DELETE * FROM produto WHERE idProduto = '" + produto.Id + "';";
                bd.ExecutarComandos(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void AtualizarProduto(DTO_Produto produto)
        {
            try
            {
                string comando = "UPDATE * produto set descricao =  '" + produto.Descricao +
                                                     "', idCategoria =  '" + produto.Idcategoria +
                                                     "', quantEstocadas =  '" + produto.QuantEstocada +
                                                     "', unidade =  '" + produto.Unidade +
                                                     "', lote =  '" + produto.Lote +
                                                     "', dtValidade =  '" + produto.Dtvalidade.ToString("yyyy/MM/dd") +                                                     
                                                     "' WRERE idProduto = '" + produto.Id + "';";
                bd.ExecutarComandos(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        internal void InserirNovoProduto()
        {
            throw new NotImplementedException();
        }

        public DataTable ListarProdutos()
        {
            try
            {
                string comando = "SELECT * FROM Produto;";
                return bd.ExecutarConsulta(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ListarProdutoporID(int id)
        {
            try
            {
                string comando = "SELECT * FROM Produto where idProduto = " + id + ";";
                return bd.ExecutarConsulta(comando);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
