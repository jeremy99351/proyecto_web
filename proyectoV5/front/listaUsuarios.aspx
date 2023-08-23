<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listaUsuarios.aspx.cs" Inherits="front_listaUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link rel="stylesheet" href="../css/listaAdmi.css" />
    <link rel="stylesheet" href="../css/lateral.css" />
    <link rel="stylesheet" href="../loading.css" />

    <title>listar usuarios</title>
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
        
        <div>
            <div class="slidershow-container">

            <div id="divisor"></div>
            <!--primer contenedor-->
            <div class="mySlides fade">
                <div class="numbertext"></div>
                <div class="contenedor">
                    <div class="descripcion_contenedor">
                        <p></p>
                    </div>



                    <asp:GridView ID="gdvUsuarios" runat="server" AutoGenerateColumns="False" OnRowEditing="ModificarFila" DataKeyNames="cedula_mantenimiento" >
                        <Columns>
                            <asp:TemplateField HeaderText="Correo">
                                <ItemTemplate>
                                    <asp:Label ID="lblCorreo" runat="server" Text='<%# Eval("cedula_mantenimiento") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre">
                                <ItemTemplate>
                                    <asp:Label ID="lblContrasennia" runat="server" Text='<%# Eval("nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellidos">

                                <ItemTemplate>
                                    <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("primer_apellido") %>'></asp:Label>
                                    <asp:Label ID="lblApeliidos" runat="server" Text='<%# Eval("segundo_apellido") %>'></asp:Label>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Codigo del usuario">
                                <ItemTemplate>
                                    <asp:Label ID="lblCedula" runat="server" Text='<%# Eval("cod_usuario") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contraseña">
                                <ItemTemplate>
                                    <asp:Label ID="lblCor" runat="server" Text='<%# Eval("correo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                          <asp:CommandField HeaderText="Operaciones" ShowHeader="True" ShowEditButton="True" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
