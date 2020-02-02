<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloReserva.aspx.cs" Inherits="Testeo.Sitios.ModuloReserva1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleSheetAccesorios.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Reservas | BNH</title>
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
                    <h3>Módulo Reserva </h3>

                </div>
                <div class="thumbnail">
                    
                    <asp:GridView ID="GridView1" CssClass="table" runat="server"
                        OnRowCancelingEdit="RowCancelingEvent"
                        OnRowDeleting="RowDeletingEvent"
                        OnRowEditing="RowEditingEvent"
                        AutoGenerateColumns="false"
                        DataKeyNames="id_reserva">


                        <Columns>
                            <asp:TemplateField HeaderText="CODIGO RESERVA">
                                <ItemTemplate>
                                    <asp:Label ID="lb1" runat="server" ReadOnly="true" Text='<% #Bind("id_reserva")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb2" runat="server" ReadOnly="true" Text='<% #Bind("id_reserva")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="FECHA RESERVA">
                                <ItemTemplate>
                                    <asp:Label ID="lb3" runat="server" Text='<% #Bind("fecha_reserva")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb8" runat="server" Text='<% #Bind("fecha_reserva")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="FECHA REQUERIDA">
                                <ItemTemplate>
                                    <asp:Label ID="lb4" runat="server" Text='<% #Bind("fecha_requerida")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb9" runat="server" Text='<% #Bind("fecha_requerida")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="CIUDAD">
                                <ItemTemplate>
                                    <asp:Label ID="lb5" runat="server" Text='<% #Bind("ciudad")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb10" runat="server" Text='<% #Bind("ciudad")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="REGION">
                                <ItemTemplate>
                                    <asp:Label ID="lb16" runat="server" Text='<% #Bind("region")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb15" runat="server" Text='<% #Bind("region")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="DIRECCION">
                                <ItemTemplate>
                                    <asp:Label ID="lb13" runat="server" Text='<% #Bind("direccion")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb14" runat="server" Text='<% #Bind("direccion")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="TELEFONO">
                                <ItemTemplate>
                                    <asp:Label ID="lb12" runat="server" Text='<% #Bind("telefono")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb17" runat="server" Text='<% #Bind("telefono")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="CODIGO DE USUARIO">
                                <ItemTemplate>
                                    <asp:Label ID="lb19" runat="server" Text='<% #Bind("id_usuario")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="lb18" runat="server" Text='<% #Bind("id_usuario")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>




                                 <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ShowEditButton="true" />
                             
                        </Columns>
                    </asp:GridView>


                </div>
            </div>
        </form>
    </div>
</body>
</html>