<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Testeo.Sitios.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../Estilos/StyleSheet2.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Login</title>
</head>

<body>
    <form action="/" method="post">
        <div id="Contenedor">
            <h2>Login</h2>
            <input type="text" name="usuario" placeholder="&#128272;Usuario" />
            <input type="password" name="password" placeholder="&#128272;Contraseña" />
            <input type="submit" name="Ingresar" value="Ingresar" />
        </div>
    </form>
</body>
</html>
