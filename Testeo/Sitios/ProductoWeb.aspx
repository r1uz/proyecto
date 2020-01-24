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


                <asp:Image ID="imgPreview" Width="50" float="left" ImageUrl="https://cdn.pixabay.com/photo/2017/07/11/10/43/upload-2493114_960_720.png" runat="server" />
                <br />
                <br />
                Archivo:
                <asp:FileUpload ID="fuploadImagen" accept=".jpg" CssClass="form-control" runat="server" />
                <br />


                <asp:Label ID="lb_descr" runat="server" Text=""></asp:Label>
                <br />

                <br />

                <asp:DropDownList ID="dlcategoria" runat="server"></asp:DropDownList><br />
                <br />
                <asp:Button ID="btnprod" runat="server" Text="Agregar Producto" CssClass="form-control btn btn-primary" OnClick="btnprod_Click" /><br />
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="lb_image" runat="server" Text=""></asp:Label><br />
                <asp:Image ID="Image2" Width="400" runat="server" />
                <br />

                <asp:GridView ID="GridView1" CssClass="table" runat="server"
                    OnRowCancelingEdit="RowCancelingEvent"
                    OnRowDeleting="RowDeletingEvent"
                    OnRowEditing="RowEditingEvent"
                    OnRowUpdating="RowUpdatingEvent"
                    AutoGenerateColumns="false"
                    DataKeyNames="id_producto"
                    OnRowDataBound="RowDataBoundEvent">

                    <Columns>
                        <asp:TemplateField HeaderText="CODIGO PRODUCTO">
                            <ItemTemplate>
                                <asp:Label ID="lb1" runat="server" ReadOnly="true" Text='<% #Bind("id_producto")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="lb2" runat="server" ReadOnly="true" Text='<% #Bind("id_producto")%>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="NOMBRE">
                            <ItemTemplate>
                                <asp:Label ID="lb3" runat="server" Text='<% #Bind("nombre")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtnombre2" runat="server" Text='<% #Bind("nombre")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="PRECIO">
                            <ItemTemplate>
                                <asp:Label ID="lb4" runat="server" Text='<% #Bind("precio")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtprecio2" runat="server" Text='<% #Bind("precio")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="STOCK">
                            <ItemTemplate>
                                <asp:Label ID="lb5" runat="server" Text='<% #Bind("stock")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtstock2" runat="server" Text='<% #Bind("stock")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="DESCRIPCION">
                            <ItemTemplate>
                                <asp:Label ID="lb6" runat="server" Text='<% #Bind("descripcion")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdescripcion2" runat="server" Text='<% #Bind("descripcion")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="CATEGORIA">
                            <ItemTemplate>
                                <asp:Label ID="lb7" runat="server" Text='<% #Bind("Categoria.nombre")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="dlcategoria2" runat="server"></asp:DropDownList>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" />





                    </Columns>
                    



                </asp:GridView>


            </div>
        </div>
    </form>
</body>
</html>