<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoriaWeb.aspx.cs" Inherits="Testeo.Sitios.CategoriaWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleSheetCategoria.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Categoria | BNH</title>
    <link rel="stylesheet" type="text/css" href="/Estilos/css/bootstrap.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotronq">
                <h3>Sección Categorías</h3>
            </div>
            <div class="thumbnail">
                <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" placeholder="Nombre"></asp:TextBox>

                <br />
                <asp:TextBox ID="txtdescripcion" runat="server" CssClass="form-control" placeholder="Descripcion"></asp:TextBox>
                <asp:Label ID="lb_descr" runat="server" Text=""></asp:Label>

                <br />
                <br />
                <asp:Button ID="btnADD" runat="server" Text="Agregar" CssClass="form-control btn btn-primary" OnClick="btnADD_Click" /><br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" CssClass="table" runat="server"
                    OnRowCancelingEdit="rowCancelEditEvent"
                    OnRowDeleting="rowDeletingEvent"
                    OnRowEditing="rowEditingEvent"
                    OnRowUpdating="rowUpdatingEvent"
                    AutoGenerateColumns="false"
                    DataKeyNames="id_categoria">
                    <Columns>
                        <asp:TemplateField HeaderText="CODIGO">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" readonly="true" Text='<% #Bind("id_categoria")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="lbcodigo2" runat="server" ReadOnly="true" Text='<% #Bind("id_categoria")%>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="NOMBRE">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<% #Bind("nombre")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtnombre2" runat="server" Text='<% #Bind("nombre")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="DESCRIPCIÓN">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<% #Bind("descripcion")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdescripcion2" runat="server" Text='<% #Bind("descripcion")%>'></asp:TextBox>
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
