<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservaWeb.aspx.cs" Inherits="Testeo.Sitios.ReservaWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleSheetAccesorios.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Productos | BNH</title>
    <link rel="stylesheet" type="text/css" href="/Estilos/css/bootstrap.css" />
</head>
<body>
    <div class="background">
        <form id="form1" runat="server">
            <div class="container">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Volver" OnClick="Button1_Click" />
                <br />
                <br />
                <div class="jumbotron2">
                    <h3>Reservas</h3>

                </div>
                <div class="thumbnail">
                    Producto a reservar: 
                    <asp:DropDownList ID="dlproducto" runat="server"></asp:DropDownList><br />

                    <asp:TextBox ID="txttelefono" runat="server" maxlength="9" CssClass="form-control" placeholder="Telefono" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;"></asp:TextBox><br />

                    <asp:TextBox ID="txtciudad" runat="server" maxlength="50" CssClass="form-control" placeholder="Ciudad"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtregion" runat="server" maxlength="50" CssClass="form-control" placeholder="Region"></asp:TextBox><br />
                    <asp:TextBox ID="txtdireccion" runat="server" maxlength="255" CssClass="form-control" placeholder="Direccion"></asp:TextBox>
                  
                    <br />
                    <asp:Label ID="lb_descr" runat="server" CssClass="label-danger" Text=""></asp:Label>
                    <br />
                    <br />
                    Fecha de reserva:  
                     <asp:Label ID="txtreserva" runat="server" Text=""></asp:Label>
                    <br />
                    Fecha Requerida:
                    <asp:Calendar ID="fecha_req" runat="server"></asp:Calendar>
                    <br />

                    <asp:Button ID="btn_reserva" runat="server" Text="Reservar" CssClass="btn btn-primary" OnClick="btn_reserva_Click"/>

                </div>
            </div>
        </form>
    </div>
</body>
</html>
