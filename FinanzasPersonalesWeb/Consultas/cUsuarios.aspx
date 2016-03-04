<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .col-centered {
            display: block;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }

        .center {
            width: 330px;
            padding: 10px;
            min-height: 20px;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid .col-centered">
        <div class="row">
            <div class="col-md-offset-3 col-md-8">
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
            <div class="center">
                <asp:GridView ID="UsuarioGridView" runat="server" CssClass="table table-hover table-responsive">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="UsuarioId" DataNavigateUrlFormatString="/Registros/rUsuarios.aspx?Id={0}" Text="Editar" />
                    </Columns>
                </asp:GridView>
            </div>
            <asp:HyperLink ID="ImprimirHyperLink" runat="server" NavigateUrl="~/ReportViewers/ListadoUSuarios.aspx">Imprimir</asp:HyperLink>

        </div>
    </div>
</asp:Content>
