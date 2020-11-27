using DTO;
using System;

namespace Prova_D
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)                
            {
                DTO_Usuario usuariologado = (DTO_Usuario)Session["usuario"];
                lblEmailUsuario.Text = usuariologado.Email;
            }
        }
    }
}