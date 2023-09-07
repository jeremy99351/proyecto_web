<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarMaterias.aspx.cs" Inherits="front_registrarMaterias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="../css/listaAdmi.css" />
    <link rel="stylesheet" href="../css/lateral.css" />
    <link rel="stylesheet" href="../loading.css" />

    <title>Registro de usuario</title>
</head>

<body>

    <div class="navbar_lateral">
        <a href="index.html">
            <img src="img/liceo_tambor_escudo.jpg" alt="Logo Gemas"></a>

        <div id="navbar_lateral_inicio">
            <a href="index.html">INICIO</a>
        </div>
        <!-- lista de alumnos es la lista global, se incluyen todos los grupos -->
        <div id="navbar_lateral_inicio"><a href="listaAdmi.html">Top ausencias</a></div>
        <div id="navbar_lateral_inicio"><a href="lista_grupo.html">Lista de Grupos </a></div>
        <div id="navbar_lateral_inicio"><a href="registrar_ausccencia.html">Registrar Aucencia</a></div>
        <div id="navbar_lateral_inicio">
            <a href="aucencia_por grupo.html">Aucencia por
                Grupo</a>
        </div>
        <div id="navbar_lateral_inicio"><a href="mi_horario.html">Mi Horario</a></div>
        <div id="navbar_lateral_inicio"><a href="verHorario.html">Ver horario</a></div>


    </div>

    <form id="form1" runat="server">



        <div class="wrapper">
            <form action="">

                <h1>Registrar Usuarios</h1>

                <div class="input-box">
                    <asp:Label ID="lblCodigo" runat="server" Text="Codigo de la materia"></asp:Label>
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre de la materia"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblNivel" runat="server" Text="Nivel para la materia"></asp:Label>
                    <asp:TextBox ID="txtNivel" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <asp:Button ID="btn_registrar" class="btn" runat="server" Text="Registrar" OnClick="btn_registrar_Click" />

            </form>

        </div>


    </form>
</body>
</html>
