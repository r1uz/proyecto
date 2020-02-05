<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mantenimiento.aspx.cs" Inherits="Testeo.Sitios.Mantenimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleSheetAccesorios.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mantenimiento | BNH</title>
    <link rel="stylesheet" type="text/css" href="/Estilos/css/bootstrap.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="background">
            <div class="container">

                <asp:Button ID="Button4" runat="server" CssClass="btn btn-warning" Text="Volver" OnClick="Button4_Click" />

                <%if (HttpContext.Current.Session["tipo"].Equals("administrador"))
                    { %>
                <br />
                <br />
                <div class="jumbotron2">
                    <h3>Mantenimiento
                    </h3>

                </div>
                <asp:Button ID="Button1" runat="server" CssClass="form-control btn btn-success" Text="Administrar Categorias" OnClick="Button1_Click" /><br />
                <br />
                <asp:Button ID="Button2" runat="server" CssClass="form-control btn btn-success" Text="Administrar Productos" OnClick="Button2_Click" /><br />
                <br />
                <asp:Button ID="Button5" runat="server" CssClass="form-control btn btn-primary" Text="Ver Reservas" OnClick="Button5_Click" /><br />
                <br />
                <asp:Button ID="Button3" runat="server" CssClass="form-control btn btn-primary" Text="Ver Detalle Reservas" OnClick="Button3_Click" /><br />
                <br />
            </div>
            <%} %>
    </form>
    </div>
</body>

</html>
