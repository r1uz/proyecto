<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroWeb.aspx.cs" Inherits="Testeo.Sitios.RegistroWeb" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../Estilos/StyleSheet2.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Registro | BNH</title>
</head>

<body>
    <div id="BG">
       <form id="form1" runat="server">
            <div class="LoginBox">
                <img class="Avatar" src="../Imagenes/Logo.jpg" alt="Logo BNH"/>
                <h1>Registro</h1>

                <!-- USERNAME -->
                <label for="username">Username</label>
                <asp:TextBox ID="txtuser" runat="server" maxlength="15" placeholder="&#128272;Usuario"></asp:TextBox>
               

                <!-- PASSWORD -->
                <label for="password">Password</label>
                <asp:TextBox ID="txtpass" runat="server" maxlength="15" TextMode="Password" placeholder="&#128272;Contraseña"></asp:TextBox>             
               
                 <label for="nombre">Nombre</label><br />
                <asp:TextBox ID="txtname" runat="server" maxlength="20" placeholder="Nombre"></asp:TextBox>             
                               
                <br />
                <label for="email">Email</label>
                <asp:TextBox ID="txtemail" runat="server" maxlength="20" placeholder="Email" Height="20px" Width="115px"></asp:TextBox>             
                <asp:DropDownList ID="dlcorreo" runat="server">
                    <asp:ListItem>@gmail.com</asp:ListItem>
                    <asp:ListItem>@hotmail.com</asp:ListItem>
                    <asp:ListItem>@live.cl</asp:ListItem>
                    <asp:ListItem>@correoaiep.cl</asp:ListItem>
                    <asp:ListItem>@yahoo.com</asp:ListItem>
                </asp:DropDownList><br />

                
                <asp:Button ID="btnADD" runat="server" Text="Registrarse" OnClick="btnADD_Click1"   />
            
            </div>
        </form>
    </div>
    
</body>
</html>
