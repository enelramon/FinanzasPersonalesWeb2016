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
        </asp:DropDownList>
        <asp:TextBox ID="DatosTextBox" runat="server" Width="286px"></asp:TextBox>
        <asp:Button ID="BuscarButton" runat="server" Text="Buscar" Width="97px" />
        <br />
        <asp:GridView ID="DatosGridView" runat="server" Width="501px" BorderColor="green" BorderWidth="4px" BackColor="#16a085">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
