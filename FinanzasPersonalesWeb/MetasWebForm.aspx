<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MetasWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.MetasWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:TextBox ID="MetaIdTextBox" runat="server" placeholder="Ingrese Id" Width="139px"></asp:TextBox>
    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" /><br />

    <asp:TextBox ID="DescripcionTextBox" runat="server" placeholder="Ingrese una Descripcion" Width="140px"></asp:TextBox>  <br />  
    <asp:DropDownList ID="PresupuestoIdDropDownList" runat="server" Height="26px" Width="149px"></asp:DropDownList>
    <asp:Button ID="AgregarButton" runat="server" Text="Agregar" />
    <br />
    <asp:DropDownList ID="TipoDeIngresoDropDownList" runat="server" Height="26px" Width="149px"></asp:DropDownList><br />
    <asp:ListBox ID="ListBox1" runat="server" Width="145px"></asp:ListBox>
    <br />
    <br />
    
    <asp:Button Text="Nuevo" runat="server" ID="NuevoButton" />
    <asp:Button Text="Guardar" runat="server" ID="GuadarButton" />
    <asp:Button Text="Eliminar" runat="server" ID="Eliminar" />
</asp:Content>
