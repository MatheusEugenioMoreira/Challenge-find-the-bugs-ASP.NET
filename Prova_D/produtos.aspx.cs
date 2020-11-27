using System;
using System.Web.UI.WebControls;
using BLL;
using DTO;

namespace Prova_D
{
    public partial class Produtos : System.Web.UI.Page
    {
        DTO_Usuario usuariologado;
        DTO_Produto produto = new DTO_Produto();
        BLL_Produto produtobll = new BLL_Produto();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
                Response.Redirect("logout.aspx");
            else
            {
                usuariologado = (DTO_Usuario)Session["usuario"];
                lblEmailUsuario.Text = usuariologado.Email;
            }
           
                gridProdutos.DataSource = produtobll.ListarProdutos();
                gridProdutos.DataBind();
           
        }

        protected void gridProdutos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                gridProdutos.EditIndex = -1;
                gridProdutos.DataSource = produtobll.ListarProdutos();
                gridProdutos.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void gridProdutos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                produto.Id = int.Parse(gridProdutos.Rows[e.RowIndex].Cells[2].Text);
                produtobll.ExcluirProduto(produto);
                gridProdutos.EditIndex = -1;
                gridProdutos.DataSource = produtobll.ListarProdutos();
                gridProdutos.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void gridProdutos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                produto.Id = int.Parse(e.NewValues[0].ToString());
                produto.Descricao = char.Parse(e.NewValues[2].ToString());
                produto.Idcategoria = int.Parse(e.NewValues[2].ToString());
                produto.QuantEstocada = int.Parse(e.NewValues[3].ToString());
                produto.Unidade = char.Parse(e.NewValues[4].ToString());
                produto.Lote = char.Parse(e.NewValues[5].ToString());
                produto.Dtvalidade = DateTime.Parse(e.NewValues[6].ToString()); 

                produtobll.AtualizarProduto(produto);
                gridProdutos.EditIndex = -1;
                gridProdutos.DataSource = produtobll.ListarProdutos();
                gridProdutos.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void gridProdutos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                gridProdutos.EditIndex = e.NewEditIndex;
                gridProdutos.DataSource = produtobll.ListarProdutos();
                gridProdutos.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}