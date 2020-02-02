<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloDetalleReserva.aspx.cs" Inherits="Testeo.Sitios.ModuloReserva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleSheetAccesorios.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Detalle Reservas | BNH</title>
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
                    <h3>Módulo Detalle Reserva | BNH </h3>

                </div>
                <div class="thumbnail">
                    
                    <asp:GridView ID="GridView1" CssClass="table" runat="server"
                        OnRowCancelingEdit="RowCancelingEvent"
                        OnRowDeleting="RowDeletingEvent"
                        OnRowEditing="RowEditingEvent"
                        AutoGenerateColumns="false"
                        DataKeyNames="id_dr">


                        <Columns>
                            <asp:TemplateField HeaderText="CODIGO DETALLE RESERVA">
                                <ItemTemplate>
                                    <asp:Label ID="lb1" runat="server" ReadOnly="true" Text='<% #Bind("id_dr")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb2" runat="server" ReadOnly="true" Text='<% #Bind("id_dr")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="CODIGO RESERVA">
                                <ItemTemplate>
                                    <asp:Label ID="lb3" runat="server" Text='<% #Bind("id_reserva_d")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb8" runat="server" Text='<% #Bind("id_reserva_d")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="CODIGO PRODUCTO">
                                <ItemTemplate>
                                    <asp:Label ID="lb4" runat="server" Text='<% #Bind("id_producto_d")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb9" runat="server" Text='<% #Bind("id_producto_d")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="PRECIO FINAL">
                                <ItemTemplate>
                                    <asp:Label ID="lb5" runat="server" Text='<% #Bind("precioFinal")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb10" runat="server" Text='<% #Bind("precioFinal")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="NOMBRE PRODUCTO">
                                <ItemTemplate>
                                    <asp:Label ID="lb6" runat="server" Text='<% #Bind("nombreProd")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb11" runat="server" Text='<% #Bind("nombreProd")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                                 <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" />
                             
                        </Columns>
                    </asp:GridView>


                </div>
            </div>
        </form>
    </div>
</body>
</html>

