<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MetasWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.MetasWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:TextBox ID="MetaIdTextBox" runat="server" placeholder="Ingrese Id"></asp:TextBox>
    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" /><br />

    <asp:TextBox ID="DescripcionTextBox" runat="server" placeholder="Ingrese una Descripcion"></asp:TextBox>  <br />  
    <asp:DropDownList ID="PresupuestoIdDropDownList" runat="server" Height="26px" Width="149px"></asp:DropDownList><br /><br />
    <asp:DropDownList ID="TipoDeIngresoDropDownList" runat="server" Height="26px" Width="149px"></asp:DropDownList><br />
    <br />
    <asp:Button Text="Nuevo" runat="server" ID="NuevoButton" />
    <asp:Button Text="Guardar" runat="server" ID="GuadarButton" />
    <asp:Button Text="Eliminar" runat="server" ID="Eliminar" />
</asp:Content>
