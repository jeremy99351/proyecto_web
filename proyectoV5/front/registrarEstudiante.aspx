<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarEstudiante.aspx.cs" Inherits="front_registrarEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

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
                        <asp:Label ID="lblCod_Usuario" runat="server" Text="Tipo de Usuario"></asp:Label>
                        <asp:DropDownList ID="ddlUsuario" runat="server"></asp:DropDownList>
                    </div>
                    <br />


                    <div class="input-box">
                        <asp:Label ID="lblSeccion" runat="server" Text="Seccion"></asp:Label>
                        <asp:DropDownList ID="ddlSeccion" runat="server"></asp:DropDownList>
                    </div>
                    <br />

                    <div class="input-box">
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>

                </form>
            </div>
            <br />

            <asp:Button ID="btn" class="btn" runat="server" Text="Registrar" OnClick="btn_Click" />


        </div>
    </form>
</body>
</html>
