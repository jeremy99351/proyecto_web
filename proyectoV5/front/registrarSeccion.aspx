<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarSeccion.aspx.cs" Inherits="front_registrarSeccion" %>

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

                    <h1>Registrar Grupos</h1>

                    <div class="input-box">
                        <asp:Label ID="lblGrupo" runat="server" Text="Grupo"></asp:Label>
                        <asp:TextBox ID="txtGrupo" runat="server"></asp:TextBox>
                        <i class='bx bxs-user'></i>
                    </div>
                    <br />

                    <div class="input-box">


                        <asp:Label ID="lblDocente" runat="server" Text="Docente"></asp:Label>
                        <asp:DropDownList ID="ddlDocente" runat="server"></asp:DropDownList>
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
