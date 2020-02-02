<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Testeo.Sitios.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleSheet2.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login | BNH</title>
</head>

<body>
    <div id="BG">
        <form id="form1" runat="server">
            <div class="LoginBox">
                <img class="Avatar" src="../Imagenes/Logo.jpg" alt="Logo BNH" />
                <h1>Login</h1>

                <label for="username">Username</label>
                <asp:TextBox ID="txtuser" runat="server" MaxLength="15" placeholder="&#128272;Usuario"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="txtname" ControlToValidate="txtuser" ErrorMessage="Favor ingresar Usuario" />
                <br />
                <br />

                <!-- PASSWORD -->
                <label for="password">Password</label>
                <asp:TextBox ID="txtpass" runat="server" MaxLength="15" TextMode="Password" placeholder="&#128272;Contraseña"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtpass" ErrorMessage="Favor ingresar su contraseña" />
                <br />
                <br />

                <asp:Button ID="btnADD" runat="server" Text="Ingresar" OnClick="btnADD_Click" />
                <a href="#">Lost your password</a><br />
                <a href="RegistroWeb.aspx">Don't have an account?</a>
            </div>
        </form>
    </div>

</body>
</html>
