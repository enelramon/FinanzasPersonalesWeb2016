<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rCuentas.aspx.cs" Inherits="FinanzasPersonalesWeb.rCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 301px;
            height: 281px;
        }
        .auto-style3 {
            width: 109px;
        }
        .auto-style1 {
            height: 26px;
            width: 109px;
        }
        </style>
</head>
<body>
    <h1>Encabezado</h1>
    <form id="formularioCuentas" runat="server">
        <div class="auto-style2">
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Cuenta Id"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxIdCuenta" runat="server" Width="155px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="LDescripcion" runat="server" Text="Descripcion"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxDescripcion" runat="server" Width="155px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="LBalance" runat="server" Text="Balance"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="155px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LPorciento" runat="server" Text="Porciento"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBoxPorciento" runat="server" Width="155px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="BtnNuevo" runat="server" BorderColor="#FF66FF" BorderStyle="Outset" Text="Nuevo" Width="82px" />
            <asp:Button ID="BtnGuardar" runat="server" BorderColor="#FF66FF" BorderStyle="Outset" Text="Guardar" Width="87px" />
            <asp:Button ID="BtnEliminar" runat="server" BorderColor="#FF66FF" BorderStyle="Outset" Text="Eliminar" Width="71px" />
        </div>
    </form>
    <footer>
        <h1>pie de pagina</h1>
    </footer>
</body>
</html>
