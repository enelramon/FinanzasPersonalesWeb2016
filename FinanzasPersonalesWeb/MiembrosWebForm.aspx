<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Site.Master" CodeBehind="MiembrosWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.Miembros" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    MiembroId: <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 16px"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" style="margin-left: 10px; margin-top: 10px" Text="Buscar" Width="70px" />

<html xmlns="http://www.w3.org/1999/xhtml">

</html>
    <br />
    Descripción: <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 16px"></asp:TextBox>

<html xmlns="http://www.w3.org/1999/xhtml">

</html>
    <br />
    Activo:&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RbActivo" runat="server" OnCheckedChanged="RbActivo_CheckedChanged" Text="Activo" />
&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RbInactivo" runat="server" Text="Inactivo" />
    <br />
    <br />
    <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnAtras" runat="server" Text="Atrás" />
    <br />
    <br />
    <br />
</asp:Content>
