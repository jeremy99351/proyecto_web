<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarUsuario.aspx.cs" Inherits="front_registrarUsuario" %>

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


<<<<<<< HEAD
<<<<<<< HEAD
                <li><a href="">Ver Listas</a>
                    <ul>
                        <li><a href="listarSeccion.aspx">Ver Grupos</a></li>
                        <li><a href="listarEstudiantes.aspx">Ver Estudiantes</a></li>
                        <li><a href="listaDocente.aspx">Ver Docentes</a></li>
                        <li><a href="listaUsuarios.aspx">Ver Usuarios Especiales</a></li>
                    </ul>
                </li>

                <li><a>Configuraciones</a></li>
            </ul>
       </div>

        <form id="form1" runat="server">
=======
    </div>
    <form id="form1" runat="server">
>>>>>>> parent of 81def5a (jeremy)
=======
    </div>
    <form id="form1" runat="server">
>>>>>>> parent of 81def5a (jeremy)



        <div class="wrapper">
            <form action="">

                <h1>Registrar Usuarios</h1>

                <div class="input-box">
                    <asp:Label ID="lblCedula" runat="server" Text="Cedula"></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />
                <div class="input-box">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblAp1" runat="server" Text="Primer Apellido"></asp:Label>
                    <asp:TextBox ID="txtAp1" runat="server"></asp:TextBox>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblAp2" runat="server" Text="Segundo Apellido"></asp:Label>
                    <asp:TextBox ID="txtAp2" runat="server"></asp:TextBox>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblCod_Usuario" runat="server" Text="Codigo de Usuario"></asp:Label>
                    <asp:TextBox ID="txtCodigo_Usuario" runat="server"></asp:TextBox>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblTipo_Usuario" runat="server" Text="Tipo de Usuario"></asp:Label>
                    <asp:TextBox ID="txtTipo_uSUARIO" runat="server"></asp:TextBox>
                </div>
                <br />

                div class="input-box">
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </div>
                <br />

                <asp:Button ID="btn" class="btn" runat="server" Text="Registrar" OnClick="btn_Click" />


            </form>


        </div>




    </form>
</body>
</html>
