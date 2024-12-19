<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PRY_Taglitore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Login</title>
</head>
<body class="bg-light">
    <div class="container vh-100 d-flex justify-content-center align-items-center">
        <div class="card p-4 shadow-lg" style="width: 24rem;">
            <div class="card-body">
                <h5 class="card-title text-center mb-4">Inicio de Sesión</h5>
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" CssClass="text-danger" />
                <form runat="server">
                    <div class="mb-3">
                        <label for="txtNombre" class="form-label">Usuario</label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" Placeholder="Ingrese su usuario"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtContraseña" class="form-label">Contraseña</label>
                        <asp:TextBox ID="txtContrasena" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Ingrese su contraseña"></asp:TextBox>
                    </div>
                    <div class="d-grid">
                        <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
