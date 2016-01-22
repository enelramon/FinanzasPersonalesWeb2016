<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rTiposUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.rTiposUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 181px; width: 953px">
        <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 65px"></asp:TextBox>
        <p></p>
        <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 65px"></asp:TextBox>
    </div>
</asp:Content>
