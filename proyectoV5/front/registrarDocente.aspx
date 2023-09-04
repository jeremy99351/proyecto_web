<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarDocente.aspx.cs" Inherits="front_registrarDocente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div class="wrapper">
            <form action="">

                <h1>Registrar Docentes</h1>

                <div class="input-box">
                    <asp:Label ID="lblcedula" runat="server" Text="Cedula del docente"></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre del deocente"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                 <div class="input-box">
                    <asp:Label ID="lblAp1" runat="server" Text="Primer apellido"></asp:Label>
                    <asp:TextBox ID="txtAp1" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                 <div class="input-box">
                    <asp:Label ID="lblAp2" runat="server" Text="Segundo Apellido"></asp:Label>
                    <asp:TextBox ID="txtAp2" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                 <div class="input-box">
                    <asp:Label ID="lblCodigoMateria" runat="server" Text="Materia que iparte"></asp:Label>
                    <asp:TextBox ID="txtCodMateria" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                 <div class="input-box">
                    <asp:Label ID="lblCodigoUsuario" runat="server" Text="Codigo del usuario"></asp:Label>
                    <asp:TextBox ID="txtCodUsuario" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblTipo_Usuario" runat="server" Text="Tipo de Usuario"></asp:Label>
                    <asp:TextBox ID="txtTipo_uSUARIO" runat="server"></asp:TextBox>
                </div>
                <br />

                  <div class="input-box">
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </div>
                <br />

                <asp:Button ID="btn_registrar" class="btn" runat="server" Text="Registrar" OnClick="btn_registrar_Click"  />

            </form>

        </div>
        </div>
    </form>
</body>
</html>
