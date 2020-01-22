<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductoWeb.aspx.cs" Inherits="Testeo.Sitios.ProductoWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sección Productos</title>
    <link rel="stylesheet" type="text/css" href="/Estilos/css/bootstrap.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h3>Módulo Productos</h3>
            </div>
            <div class="thumbnail">
                <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" placeholder="Nombre"></asp:TextBox><br />
                <asp:TextBox ID="txtprecio" runat="server" CssClass="form-control" placeholder="Precio"></asp:TextBox><br />
                <asp:TextBox ID="txtstock" runat="server" CssClass="form-control" placeholder="Stock"></asp:TextBox><br />
                <asp:TextBox ID="txtdescripcion" runat="server" CssClass="form-control" placeholder="Descripción"></asp:TextBox><br />
                <asp:DropDownList ID="dlcategoria" runat="server"></asp:DropDownList><br />
                <asp:Button ID="btnprod" runat="server" Text="Agregar Producto" CssClass="form-control btn btn-primary" OnClick="btnprod_Click"/><br />
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label><br />
                <br />

                <asp:GridView ID="GridView1" CssClass="table" runat="server"></asp:GridView>


            </div>
        </div>
    </form>
</body>
</html>
