<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cMiembros.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.ConsultaMiembros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>Buscar por:
                <asp:DropDownList ID="BuscarPorDropdown" runat="server">
                    <asp:ListItem>MiembroId</asp:ListItem>
                    <asp:ListItem>Nombre</asp:ListItem>
                    <asp:ListItem>esActivo</asp:ListItem>
                    <asp:ListItem>UsuarioId</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TbFiltro" runat="server" Width="298px"></asp:TextBox>
              
                <asp:Button ID="BtnBuscar" class ="btn btn-success btn-sm" runat="server" OnClick="BtnBuscar_Click" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:GridView ID="MiembrosDataGrid" runat="server" Width="526px">
                </asp:GridView>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
