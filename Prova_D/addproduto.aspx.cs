using System;
using BLL;
using DTO;

namespace Prova_D
{
    public partial class addproduto : System.Web.UI.Page
    {
        DTO_Usuario usuariologado;
        DTO_Produto produto = new DTO_Produto();
        BLL_Produto produtobll = new BLL_Produto();
        private object txtNumerolote;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
                Response.Redirect("login.aspx");
            else
            {
                usuariologado = (DTO_Usuario)Session["usuario"];
                lblEmailUsuario.Text = usuariologado.Email;
            }
            
            if (!IsPostBack)
            {
                BLL_Categoria especialidadebll = new BLL_Categoria();

                ddlcategoria.DataSource = especialidadebll.ListarCategorias();

                ddlcategoria.DataTextField = "descricao";
                ddlcategoria.DataTextField = "idCategoria";
                ddlcategoria.DataBind();
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                produto.Descricao = char.Parse(txtdescricao.Text);
                produto.Idcategoria = int.Parse(ddlcategoria.SelectedValue);
                produto.QuantEstocada = int.Parse(txtquantEstocada.Text);                
                produto.Unidade = char.Parse(txtunidade.Text);
                produto.Lote = char.Parse(txtlote.Text);
                produto.Dtvalidade = DateTime.Parse(txtdata.Text);

                produtobll.InserirNovoProduto();
                Response.Redirect("index.aspx", false);                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}