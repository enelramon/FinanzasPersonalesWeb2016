<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaTipoIngresoWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaTipoIngresoWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Consulta de Id
    <asp:TextBox ID="CodigoTextBox" runat="server" Width="268px" placeholder="Escribe Id"></asp:TextBox>
    <asp:Button ID="BuscarButton" runat="server" Height="26px" OnClick="BuscarButton_Click" Text="Buscar" />
    <asp:GridView ID="ConsultaGridView" runat="server" Width="427px">
    </asp:GridView>
    <asp:Table ID="Table1" runat="server" Height="277px" Width="568px">
    </asp:Table>
</asp:Content>
