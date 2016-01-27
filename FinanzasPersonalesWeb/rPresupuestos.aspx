<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="rPresupuestos.aspx.cs" Inherits="FinanzasPersonalesWeb.rPresupuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>
    
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
    </html>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    Presupuesto:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="97px" Width="112px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Buscar" Width="56px" />
&nbsp;&nbsp;&nbsp; Usuario&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    Descripcion&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Tipo de Egreso
    <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    Monto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;<asp:Button ID="Button5" runat="server" Text="Agregar" Width="56px" OnClick="Button5_Click" />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Limpiar" Width="63px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Guardar" Width="58px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" Text="Eliminar" Width="61px" />
    <br />
</asp:Content>
