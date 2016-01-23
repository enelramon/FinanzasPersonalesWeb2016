<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cTiposUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.cTiposUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="align-content; height: 363px;">

        <asp:Label ID="Label1" runat="server" Text="Campos Buscar"></asp:Label>
        <asp:DropDownList ID="BuscarDropDownList" runat="server" Height="24px" Width="136px">
            <asp:ListItem Value="IdTipoUsuario">Codigo</asp:ListItem>
            <asp:ListItem Selected="True">Descripcion</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="BuscarDropDownList0" runat="server" Height="18px" Width="81px">
            <asp:ListItem Selected="True" Value="Like">Similitud</asp:ListItem>
            <asp:ListItem Value="=">Igualdad</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox runat="server" Width="350px" ID="FiltroTextBox" Style="margin-left: 5px"></asp:TextBox>
        <asp:Button ID="BuscarButton" runat="server" Text="Buscar" OnClick="BuscarPor_Click" />
        <br />
        <asp:GridView ID="GrdDatos" runat="server" Height="202px" Width="727px">
        </asp:GridView>

    </div>
</asp:Content>
