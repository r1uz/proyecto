<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Testeo.Sitios.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleSheet1.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Home | BNH</title>
</head>

<body>
    <form id="form1" runat="server">
        <div id="Contenedor">
            <div id="Head">
                <%if (HttpContext.Current.Session["tipo"].Equals("administrador")){ %>
                <div class="Boton2">
                    <asp:Button ID="Button1" runat="server" Height="25px" Text="Mantenimiento" align="right" OnClick="Button1_Click" />
                </div>
                <%} %>
                <%if (HttpContext.Current.Session["id"] == null)
                    { %>
                <div class="Boton2">
                    <asp:Button ID="Button_login" runat="server" Height="25px" Text="Iniciar Sesión" OnClick="Button_login_Click" />

                </div>
                <%}
                    else
                    {%>
                <div class="Boton2">
                    <asp:Button ID="btn_cierre" runat="server" Height="25px" Text="Cerrar Sesión" OnClick="btn_cierre_Click" OnClientClick="return confirm('¿Desea salir?');" />
                </div>
                <%} %>
                <br />
                <h1 class="Titulo">BNH</h1>
                <video src="../Videos/Blonher_HD.mp4" controls="controls" loop="loop" width="600" height="300"></video>
                <h2 class="Subtitulo">Lo nuevo en Escritorios GAMERS</h2>
                <a href="ReservaWeb.aspx" class="Boton">Reserve Ahora</a>
                
                <div class="TriB"></div>
            </div>

            <div id="Datos">
                <img alt="LogoPrincipal" class="LogoPr" src="../Imagenes/Logo.jpg" />
                <h1 class="QuienesSomos">Quienes somos</h1>
                <p class="PaQuiSo">Somos&nbsp; una empresa innovadora en la industria de los escritorios para computadoras, dando un diseño unico jamás visto antes.</p>
            </div>

            <div id="Principal">
                <div class="contain1">
                    <a href="ModuloAccesorios">
                        <img alt="escritorio" class="imgcontain" src="../Imagenes/audi3.png" />
                    </a>

                </div>
                <div class="contain2">
                    <a href="ModuloEscritorios">
                        <img alt="escritorio" class="imgcontain2" src="../Imagenes/muestra.jpeg" />
                    </a>
                </div>
                <div class="contain3">
                    <a href="ModuloAccesorios">
                        <img alt="escritorio" class="imgcontain3" src="../Imagenes/ram1.png" />
                    </a>
                </div>



                <div class="TriT"></div>
            </div>
        </div>
    </form>
    <div id="Contenedor3">
        <footer>
            <h2 class="titulo-footer">Contactanos</h2>
            <h3 class="Subtitulo-footer">Reserva ahora</h3>
            <div class="footer">
                <form class="form-footer" action="/">
                    <input type="text" name="name" id="" placeholder=" Nombre" />
                    <input type="email" name="name" id="" placeholder=" Email" />
                    <textarea name="" id="" cols="30" rows="10" placeholder=" Ingrese su mensaje..."></textarea><br />
                    <input type="submit" value="Enviar" />
                </form>
            </div>
        </footer>
    </div>
</body>
</html>

