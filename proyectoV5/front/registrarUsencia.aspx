<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarUsencia.aspx.cs" Inherits="front_registrarUsencia" %>

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

                    <h1>Registrar Aucencias</h1>

                    <div class="input-box">
                        <asp:Label ID="lblEstudiante" runat="server" Text="Estudiante"></asp:Label>
                        <asp:TextBox ID="txtEstudiante" runat="server"></asp:TextBox>
                        <i class='bx bxs-user'></i>
                    </div>
                    <br />

                    <div class="input-box">
                        <asp:Label ID="lblCantidad" runat="server" Text="Cnatidad de auncencia"></asp:Label>
                        <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                        <i class='bx bxs-user'></i>
                    </div>
                    <br />

                    <div class="input-box">
                        <asp:Label ID="lblMateria" runat="server" Text="Materia"></asp:Label>
                        <asp:TextBox ID="txtMateria" runat="server"></asp:TextBox>
                        <i class='bx bxs-user'></i>
                    </div>
                    <br />

                    <div class="input-box">

                        <asp:Calendar ID="cldFecha" runat="server" SelectedDate="09/06/2023 22:18:14" VisibleDate="2023-09-06"></asp:Calendar>
                        <i class='bx bxs-user'></i>
                    </div>
                    <br />

                    <div class="input-box">

                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                        <i class='bx bxs-user'></i>
                    </div>
                    <br />

                    <asp:Button ID="btn_registrar" class="btn" runat="server" Text="Registrar" OnClick="btn_registrar_Click" />

                </form>

            </div>
        </div>
    </form>
</body>
</html>
