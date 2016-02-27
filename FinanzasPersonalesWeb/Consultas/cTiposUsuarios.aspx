<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cTiposUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cTiposUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .table-striped {
            margin-top: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="align-content"; height: 363px;">

        <asp:Label ID="Label1" runat="server" Text="Campos Buscar"></asp:Label>
        <asp:DropDownList ID="BuscarDropDownList" runat="server" Height="24px" Width="136px">
            <asp:ListItem Value="IdTipoUsuario">Codigo</asp:ListItem>
            <asp:ListItem Selected="True">Descripcion</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="OperadorDropDownList" runat="server" Height="21px" Width="103px">
            <asp:ListItem Selected="True" Value="Like">Similitud</asp:ListItem>
            <asp:ListItem Value="=">Igualdad</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox runat="server" Width="350px" ID="FiltroTextBox" Style="margin-left: 6px"></asp:TextBox>
        <asp:Button ID="BuscarButton" runat="server"  CssClass=".btn-primary" Text="Buscar" OnClick="BuscarPor_Click" style="margin-left: 2px" />
        <br />
        <asp:GridView ID="c" runat="server" Height="202px" Width="763px" CssClass="table table-striped" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
            </Columns>
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server">Imprimir</asp:HyperLink>
    </div>
</asp:Content>
