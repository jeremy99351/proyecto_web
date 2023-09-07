<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listaUsuarios.aspx.cs" Inherits="front_listaUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <%-- <link rel="stylesheet" href="../css/listaAdmi.css" />
    <link rel="stylesheet" href="../loading.css" />
    <link rel="stylesheet" href="../css/lateral.css" />--%>


    <title>listar usuarios</title>
</head>
<body>

    <div>


        <div class="navbar_lateral">
            <a href="index.html">
                <img src="img/liceo_tambor_escudo.jpg" alt="Logo Gemas"></a>

            <div id="navbar_lateral_inicio">
                <a href="index.html">INICIO</a>
            </div>
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
                <%-- contenedor de la lista  --%>


                <div class="slidershow-container">

                    <div id="divisor"></div>
                    <!--primer contenedor-->
                    <div class="mySlides fade">
                        <div class="numbertext"></div>
                        <div class="contenedor">
                            <div class="descripcion_contenedor">
                                <p></p>
                            </div>



                            <asp:GridView ID="gdvUsuarios" runat="server" AutoGenerateColumns="False" OnRowEditing="ModificarFila" OnRowUpdating="ActualizarFila" OnRowCancelingEdit="CancelarEdicion" DataKeyNames="cedula_mantenimiento" Width="1171px">
                                <Columns>
                                    <asp:TemplateField HeaderText="Identificacion">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCorreo" runat="server" Text='<%# Eval("cedula_mantenimiento") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nombre">
                                        <ItemTemplate>
                                            <asp:Label ID="lblContrasennia" runat="server" Text='<%# Eval("nombre") %>'></asp:Label>
                                        </ItemTemplate>

                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtNombre" runat="server" Text='<%# Eval("nombre") %>'></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Apellidos">

                                        <ItemTemplate>
                                            <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("primer_apellido") %>'></asp:Label>
                                            <asp:Label ID="lblApeliidos" runat="server" Text='<%# Eval("segundo_apellido") %>'></asp:Label>

                                        </ItemTemplate>

                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAp1" runat="server" Text='<%# Eval("primer_apellido") %>'></asp:TextBox>
                                            <asp:TextBox ID="txtAp2" runat="server" Text='<%#Eval("segundo_apellido") %>'></asp:TextBox>

                                        </EditItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Codigo">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCedula" runat="server" Text='<%# Eval("cod_usuario") %>'></asp:Label>
                                        </ItemTemplate>

                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCod" runat="server" Text='<%# Eval("cod_usuario") %>'></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Correo">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCor" runat="server" Text='<%# Eval("correo") %>'></asp:Label>
                                        </ItemTemplate>

                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCorreo" runat="server" Text='<%# Eval("correo") %>'></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="Operaciones" ShowHeader="True" ShowEditButton="True" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </div>




</body>
</html>
