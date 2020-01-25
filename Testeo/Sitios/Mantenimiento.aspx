<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mantenimiento.aspx.cs" Inherits="Testeo.Sitios.Mantenimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mantenimiento</title>
    <link rel="stylesheet" type="text/css" href="/Estilos/css/bootstrap.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="jumbotron">
                <h3>Mantenimiento
                </h3>

            </div>
            <asp:Button ID="Button1" runat="server" CssClass="form-control btn btn-success" Text="Módulo Categorias" OnClick="Button1_Click" /><br /><br />
            <asp:Button ID="Button2" runat="server" CssClass="form-control btn btn-success" Text="Módulo Productos" OnClick="Button2_Click" /><br /><br />
            <asp:Button ID="Button3" runat="server" CssClass="form-control btn btn-primary" Text="Ver Reservas" OnClick="Button3_Click" /><br /><br />
            <asp:Button ID="Button5" runat="server" CssClass="btn-primary" Text="Volver" OnClick="Button5_Click" />
        </div>
    </form>
</body>
</html>
