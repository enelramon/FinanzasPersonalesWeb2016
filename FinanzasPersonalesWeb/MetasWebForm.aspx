<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MetasWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.MetasWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox runat="server" ID="MetaIdTextBox" placeholder="MetaId"/>
    <asp:Button Text="Buscar" runat="server" ID="BuscarButton" /> <br />
    <asp:TextBox runat="server" ID="DescripcionTextBox" placeholder="Descripcion"/>
    <asp:DropDownList ID="CuentaIdDropDownList" runat="server" Height="26px" Width="149px"></asp:DropDownList>
     <asp:Button Text="Nuevo" runat="server" ID="NuevoButton" />
    <asp:Button Text="Guardar" runat="server" ID="GuadarButton" />
    <asp:Button Text="Eliminar" runat="server" ID="Eliminar" />
</asp:Content>
