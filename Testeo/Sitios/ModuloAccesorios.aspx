<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloAccesorios.aspx.cs" Inherits="Testeo.Sitios.ModuloAccesorios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleSheetAccesorios.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Accesorios | BNH</title>
    <link rel="stylesheet" type="text/css" href="/Estilos/css/bootstrap.css" />
</head>
<body>
    <div class="background">
        <form id="form1" runat="server">
            <div class="container">
                <div class="row">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="col-md-4">
                                <br />
                                <img class="img-responsive" src="data:image/jpg;base64,<%# Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"Imagen"))%>" />
                                <%#DataBinder.Eval(Container.DataItem,"nombre") %>
                                <%#DataBinder.Eval(Container.DataItem,"precio") %>
                                <br />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
