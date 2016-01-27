<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rCuentas.aspx.cs" Inherits="FinanzasPersonalesWeb.rCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 355px;
            height: 281px;
        }
        .auto-style3 {
            width: 124px;
        }
        .auto-style1 {
            height: 26px;
            width: 124px;
        }
        </style>
</head>
<body>
    <h1>Encabezado</h1>
    <form id="formularioCuentas" runat="server">
        <div class="auto-style2">
            &nbsp;&nbsp;&nbsp;
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Cuenta Id"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxIdCuenta" runat="server" Width="233px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="LDescripcion" runat="server" Text="Descripcion"></asp:Label>
                    &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxDescripcion" runat="server" Width="230px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="LBalance" runat="server" Text="Balance"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxBalance" runat="server" Width="232px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LPorciento" runat="server" Text="Porciento"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBoxPorciento" runat="server" Width="231px"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <asp:Button ID="BtnNuevo" runat="server" BorderColor="#FF66FF" BorderStyle="Outset" Text="Nuevo" Width="82px" OnClick="BtnNuevo_Click" />
            
            <asp:Button ID="BtnGuardar" runat="server" BorderColor="#FF66FF" BorderStyle="Outset" Text="Guardar" Width="87px" OnClick="BtnGuardar_Click" />

              <asp:Button ID="BtnModificar" runat="server" BorderColor="#FF66FF" BorderStyle="Outset" Text="Modificar" Width="71px" OnClick="BtnModificar_Click" />

            <asp:Button ID="BtnEliminar" runat="server" BorderColor="#FF66FF" BorderStyle="Outset" Text="Eliminar" Width="71px" OnClick="BtnEliminar_Click" />
          
        </div>
    </form>
    <footer>
        <h1>pie de pagina</h1>
    </footer>
</body>
</html>
