<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaImagen.aspx.cs" Inherits="Testeo.Sitios.PruebaImagen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="/Estilos/css/bootstrap.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                Imagen Agregada:
                <br />
                <asp:Image ID="imgPreview" Width="200" ImageUrl="https://cdn.pixabay.com/photo/2017/07/11/10/43/upload-2493114_960_720.png" runat="server" />
                <br />
                <br />
                Archivo:
                <asp:FileUpload ID="fuploadImagen" accept=".jpg" CssClass="form-control" runat="server" />
                <br />
                <br />
                Título de la Imagen:
                <asp:TextBox ID="txttitulo" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Button ID="btnSubir" runat="server" Text="Adjuntar Imagen" CssClass="btn btn-success" OnClick="btnSubir_Click" />

            </div>
        </div>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <div class="col-md-4">
                        <img class="img-responsive" />
                        <br />
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
