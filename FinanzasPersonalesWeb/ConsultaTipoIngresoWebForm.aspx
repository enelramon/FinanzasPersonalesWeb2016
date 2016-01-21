<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaTipoIngresoWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaTipoIngresoWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Consultar por Id
    <asp:TextBox ID="CodigoTextBox" runat="server" Width="271px" placeholder="Escribe un id"></asp:TextBox>

    <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarButton_Click" Text="Buscar" />

    <asp:GridView ID="ConsultaGridView" runat="server" Height="133px" Width="441px">
    </asp:GridView>
</asp:Content>
