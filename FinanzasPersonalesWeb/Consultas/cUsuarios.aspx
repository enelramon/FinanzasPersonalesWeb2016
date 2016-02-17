<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .col-centered {
            display: block;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="">
                <asp:Label ID="Label1" runat="server" Text="Buscar Por: "></asp:Label>
                <asp:DropDownList ID="FiltroDropDown" runat="server">
                    <asp:ListItem Value="UsuarioId">ID</asp:ListItem>
                    <asp:ListItem Value="Nombres">Nombre Completo</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                    <asp:ListItem Value="Email">Correo</asp:ListItem>
                </asp:DropDownList>
                <asp:Label runat="server" Text=" = "></asp:Label>
                <asp:TextBox runat="server" Width="350px" ID="FiltroTextBox"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" Text="Buscar" OnClick="BuscarPor_Click" />
            </div>
        </div>
        <div class="row">
            <div class="">
                <asp:GridView ID="UsuarioGridView" runat="server" Width="632px"></asp:GridView>

                <asp:HyperLink ID="ImprimirHyperLink" runat="server" NavigateUrl="~/ReportViewers/ListadoUSuarios.aspx">Imprimir</asp:HyperLink>

            </div>
        </div>
    </div>
</asp:Content>
