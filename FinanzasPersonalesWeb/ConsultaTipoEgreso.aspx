<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaTipoEgreso.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaTipoEgreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 85px;">
        <tr>
            <td>Consultar Por:<asp:DropDownList ID="ConsultaDropDownList" runat="server" style="margin-left: 13px" Width="127px">
                <asp:ListItem>Tipo Egreso Id</asp:ListItem>
                <asp:ListItem>Descripcion</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="CampoTextBox" runat="server" style="margin-left: 15px" Width="383px"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarButton_Click" style="margin-left: 24px" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="DatoGridView" runat="server" style="margin-top: 7px; margin-bottom: 0px" Width="580px">
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
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
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
