<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaEgresoWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaEgresoWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 139px;">
        <tr>
            <td>Consultar por:
                <asp:DropDownList ID="ElementosDropDownList" runat="server" Height="20px" Width="150px">
                    <asp:ListItem>EgresoId:</asp:ListItem>
                    <asp:ListItem>Fecha</asp:ListItem>
                    <asp:ListItem>Descripcion</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="DatosTextBox" runat="server" Width="400px"></asp:TextBox>
                <asp:Button ID="ConsultaBuscarButton" runat="server" OnClick="ConsultaBuscarButton_Click" Text="Buscar" Width="80px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="ElementosGridView" runat="server" Width="726px">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
