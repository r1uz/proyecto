<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloEscritorios.aspx.cs" Inherits="Testeo.Sitios.ModuloEscritorios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleSheet2.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Escritorios | BNH</title>
    <link rel="stylesheet" type="text/css" href="/Estilos/css/bootstrap.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">


                <asp:Repeater ID="Repeater1" runat="server">



                    <ItemTemplate>
                        <div class="col-md-4">
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
</body>
</html>
