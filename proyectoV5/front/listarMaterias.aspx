<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listarMaterias.aspx.cs" Inherits="front_listarMaterias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

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



                            <asp:GridView ID="gdvMateria" runat="server" AutoGenerateColumns="False" OnRowEditing="ModificarFila" OnRowUpdating="ActualizarFila" OnRowCancelingEdit="CancelarEdicion" DataKeyNames="cod_materia" >
                                <Columns>
                                    <asp:TemplateField HeaderText="Codigo materia">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("cod_materia") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Materia">
                                        <ItemTemplate>
                                            <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("nombre_materia") %>'></asp:Label>
                                        </ItemTemplate>

                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtNombre" runat="server" Text='<%# Eval("nombre_materia") %>'></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nivel de la materia">

                                        <ItemTemplate>
                                            <asp:Label ID="lblNivel" runat="server" Text='<%# Eval("nivel_materia") %>'></asp:Label>
                                            

                                        </ItemTemplate>

                                        <EditItemTemplate>
                                            
                                            <asp:TextBox ID="txtNivel" runat="server" Text='<%#Eval("nivel_materia") %>'></asp:TextBox>

                                        </EditItemTemplate>

                                    </asp:TemplateField>
                                   
                                    <asp:CommandField HeaderText="Operaciones" ShowHeader="True" ShowEditButton="True" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
