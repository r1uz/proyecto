<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Testeo.Sitios.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Shortcut Icon" href="../Imagenes/Logo.jpg" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../Estilos/StyleSheet2.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Login | BNH</title>
</head>

<body>
    <div id="BG">
        <form action="Principal.aspx" method="post">
            <div class="LoginBox">
                <img class="Avatar" src="../Imagenes/Logo.jpg" alt="Logo BNH"/>
                <h1>Login</h1>

                <!-- USERNAME -->
                <label for="username">Username</label>
                <input type="text" name="usuario" placeholder="&#128272;Usuario" />

                <!-- PASSWORD -->
                <label for="password">Password</label>
                <input type="password" name="password" placeholder="&#128272;Contraseña" />

                <input type="submit" name="Ingresar" value="Ingresar" />
                <a href="#">Lost your password</a><br/>
                <a href="#">Don't have an account?</a>
            </div>
        </form>
    </div>
</body>
</html>
