﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloAccesorios.aspx.cs" Inherits="Testeo.Sitios.ModuloAccesorios" %>

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

            <asp:Button ID="Button2" runat="server" CssClass="btn btn-warning2" Text="Escritorios" OnClick="Button2_Click" />
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Volver" OnClick="Button1_Click" /><br />
            <br />

            <div class="jumbotron2">

                <h3>ACCESORIOS</h3>
            </div>
            <div class="container">
                <div class="row">
                    <asp:Panel runat="server" CssStyle="text-align:left;" ID="Panel2" HorizontalAlign="left">
                        <asp:Button ID="btn_reserva" runat="server" CssClass="form-control btn btn-success" Text="Reservar" OnClick="btn_reserva_Click" />
                        <br />
                        <br />
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="jumbotron jumbotron-fluid">
                                    <div class="container-fluid">
                                        <br />
                                        <img class="img-responsive" src="data:image/jpg;base64,<%# Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"Imagen"))%>" />
                                        <%#DataBinder.Eval(Container.DataItem,"nombre") %><br />
                                        Código Producto: <%#DataBinder.Eval(Container.DataItem,"id_producto") %><br />
                                        Precio: $<%#DataBinder.Eval(Container.DataItem,"precio") %><br /><br />Descripción: <br /><br />
                                        <%#DataBinder.Eval(Container.DataItem,"descripcion") %><br />
                                        <br />

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </asp:Panel>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
