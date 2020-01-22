<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Testeo.Sitios.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../Estilos/StyleSheet1.css" />    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Home | BNH</title>
</head>

<body>
    <form id="form1" runat="server">
        <div id="Contenedor">
            <div id="Head">
                <div class="Boton2">
                <asp:Button ID="Button1" runat="server" Height="25px" Text="Mantenimiento" align="right" OnClick="Button1_Click"/>
                </div>
                <h1 class="Titulo">BNH</h1>
                <video src="../Videos/Blonher_HD.mp4" controls="controls" loop="loop" width="160" height="120"></video>
                <h2 class="Subtitulo">Lo nuevo en Escritorios GAMERS</h2>
                <a href="#" class="Boton">Reserva Ahora</a>
                <div id="Contenedor2">
                
                </div>
                <div class="TriB"></div>
            </div>
    
            <div id="Datos">
                <img alt="LogoPrincipal" class="LogoPr" src="../Imagenes/Logo.jpg" />
                <h1 class="QuienesSomos">Quienes somos</h1>
                <p class="PaQuiSo">Somos&nbsp; una empresa innovadora en la industria de los escritorios para computadoras, dando un diseño unico jamás visto antes.</p>
            </div>
    
            <div id="Principal">
                <div class="TriT"></div>
            </div>
    
            <div id="Footer">
                <div class="TriB"></div>
            </div>
        </div>
    </form>
</body>
</html>
