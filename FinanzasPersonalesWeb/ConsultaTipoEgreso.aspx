<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaTipoEgreso.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaTipoEgreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-top: 28px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            margin-left: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 85px;">
        <tr>
            <td>Consultar Por:<asp:DropDownList ID="ConsultaDropDownList" runat="server" style="margin-left: 13px" Width="127px">
                <asp:ListItem>Tipo Egreso Id</asp:ListItem>
                <asp:ListItem>Estado</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="CampoTextBox" runat="server" Width="383px" CssClass="auto-style6"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarButton_Click" style="margin-left: 19px" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="DatoGridView" runat="server" style="margin-bottom: 0px" Width="711px" CssClass="auto-style4">
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
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
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
