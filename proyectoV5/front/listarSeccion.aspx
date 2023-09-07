<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listarSeccion.aspx.cs" Inherits="front_listarSeccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <%--   <%-- contenedor de la lista  --%>


        <div class="slidershow-container">

            <div id="divisor"></div>
            <!--primer contenedor-->
            <div class="mySlides fade">
                <div class="numbertext"></div>
                <div class="contenedor">
                    <div class="descripcion_contenedor">
                        <p></p>
                    </div>



                    <asp:GridView ID="gdvSeccion" runat="server" AutoGenerateColumns="False" OnRowEditing="ModificarFila" OnRowUpdating="ActualizarFila" OnRowCancelingEdit="CancelarEdicion" DataKeyNames="cod_seccion">
                        <Columns>
                            <asp:TemplateField HeaderText="Grupo">
                                <ItemTemplate>
                                    <asp:Label ID="lblGrupo" runat="server" Text='<%# Eval("cod_seccion") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Docente">
                                <ItemTemplate>
                                    <asp:Label ID="lblDocente" runat="server" Text='<%# Eval("doce_guia") %>'></asp:Label>
                                </ItemTemplate>

                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDocente" runat="server" Text='<%# Eval("doce_guia") %>'></asp:TextBox>
                                </EditItemTemplate>

                            </asp:TemplateField>

                            <asp:CommandField HeaderText="Operaciones" ShowHeader="True" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
