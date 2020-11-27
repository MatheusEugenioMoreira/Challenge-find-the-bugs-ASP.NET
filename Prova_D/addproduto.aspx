<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproduto.aspx.cs" Inherits="Prova_D.addproduto" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Atividade Avaliativa Tipo A</title>

    <link href="assets/css/bootstrapD.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
            <!-- menu navegador -->
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button> <a class="navbar-brand" href="#">Produto</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							<a href="index.aspx">Principal</a>
						</li>
						<li>
							<a href="Produtos.aspx">Listar Produtos</a>
						</li>
                        <li class="active">
							<a href="addproduto.aspx">Novo Produto</a>
						</li>	
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <asp:Label ID="lblEmailUsuario" runat="server" Text=""></asp:Label>
						</li>						
						<li>
							<a href="login.aspx">Logar</a>
						</li>						
                        <li>
							<a href="logout.aspx">Logout</a>
						</li>						
					</ul>
				</div>				

			</nav>
            <!-- menu navegador -->
            
            <!-- Formulario Cadastro -->
			<form role="form" id="form1" runat="server">
				<div class="form-group">
					<label>
						Descriçao
					</label>
                    <asp:TextBox ID="txtdescricao" CssClass="form-control" runat="server" required="true"></asp:TextBox>
				</div>
               <div class="form-group">
					<label>
						Categoria
					</label>
                    <asp:DropDownList ID="ddlcategoria" CssClass="form-control" runat="server" required="true">                       
                    </asp:DropDownList>                    
				</div>	
                <div class="form-group">
					<label>
						Quantidade Estocada
					</label>
                    <asp:TextBox ID="txtquantEstocada" TextMode="Number" CssClass="form-control" runat="server" required="true"></asp:TextBox>
				</div>
				<div class="form-group">
					<label>
						unidade
					</label>
                    <asp:TextBox ID="txtunidade" CssClass="form-control" runat="server" required="true"></asp:TextBox>
				</div>
                <div class="form-group">
					<label>
						Lote
					</label>
                    <asp:TextBox ID="txtlote" CssClass="form-control" runat="server" required="true"></asp:TextBox>
				</div>
				<div class="form-group">
					<label>
						Data Validade
					</label>
                    <asp:TextBox ID="txtdata" CssClass="form-control" runat="server" TextMode="Date" required="true"></asp:TextBox>
				</div>				
                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-success" OnClick="btnCadastrar_Click"/>				
                <button type="reset" class="btn btn-warning">
					Limpar
				</button>
			</form>
            <!-- Formulario Cadastro -->

		</div>
	</div>
</div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>
  </body>
</html>