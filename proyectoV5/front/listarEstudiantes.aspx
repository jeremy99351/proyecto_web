<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listarEstudiantes.aspx.cs" Inherits="front_listarEstudiantes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
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



                        <asp:GridView ID="gdvUsuarios" runat="server" AutoGenerateColumns="False" OnRowEditing="ModificarFila" OnRowUpdating="ActualizarFila" OnRowCancelingEdit="CancelarEdicion" DataKeyNames="cedula_estudiante">
                            <Columns>
                                <asp:TemplateField HeaderText="Identificacion">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCorreo" runat="server" Text='<%# Eval("cedula_estudiante") %>'></asp:Label>
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

                                <asp:TemplateField HeaderText="Seccion">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSeccion" runat="server" Text='<%# Eval("cod_seccion") %>'></asp:Label>
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCodS" runat="server" Text='<%# Eval("cod_seccion") %>'></asp:TextBox>
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
</body>
</html>
