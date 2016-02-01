<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="cPresupuestos.aspx.cs" Inherits="FinanzasPersonalesWeb.cPresupuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<%--    <!DOCTYPE html>
    
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title></title>
        
        </head>
        <body>
            <form id="form1" runat="server">
                <div>
        
                </div>
            </form>
        </body>
     </html>--%>
</asp:Content>  

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
            Buscar por:
            <asp:DropDownList ID="FiltroDropDownList" runat="server" Height="35px">
                <asp:ListItem Selected="True" Value="PresupuestoId">Id</asp:ListItem>
                <asp:ListItem Value="UsuarioId">Usuario</asp:ListItem>
                <asp:ListItem>Descripcion</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="BuscarTextBox" runat="server" Width="280px"></asp:TextBox>
            <asp:Button ID="BuscarButton" runat="server" Text="Buscar" OnClick="BuscarButton_Click" />
            <br />
            <asp:GridView ID="PresupuestoGridView" runat="server" Width="313px">
            </asp:GridView>
 </asp:Content>         
        

  
