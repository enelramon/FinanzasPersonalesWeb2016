<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CTransferencias.aspx.cs" Inherits="FinanzasPersonalesWeb.CTransferencias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DatosDropDownList" runat="server" Width="108px">
            <asp:ListItem>TransferenciaId</asp:ListItem>
            <asp:ListItem>Fecha</asp:ListItem>
            <asp:ListItem>UsuarioId</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="DatosTextBox" runat="server" Width="286px"></asp:TextBox>
        <asp:Button ID="BuscarButton" runat="server" Text="Buscar" Width="97px" OnClick="BuscarButton_Click" />
        <br />
        <asp:GridView ID="DatosGridView" runat="server" Width="645px" BorderColor="green" BorderWidth="3px" BackColor="#16a085" Height="234px">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
