<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cTransferencias.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cTransferencias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                
        <asp:DropDownList ID="DatosDropDownList" runat="server" Width="108px">
            <asp:ListItem>TransferenciaId</asp:ListItem>
            <asp:ListItem>Fecha</asp:ListItem>
            <asp:ListItem>UsuarioId</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="DatosTextBox" runat="server" Width="286px"></asp:TextBox>
        <asp:Button ID="BuscarButton" runat="server" Text="Buscar" Width="97px" OnClick="BuscarButton_Click" />


                <asp:GridView ID="DatosGridView" runat="server" BackColor="#16a085" BorderColor="green" BorderWidth="3px" Height="234px" Width="645px">
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
                <br />
    
    </div>
    </form>
</body>
</html>
