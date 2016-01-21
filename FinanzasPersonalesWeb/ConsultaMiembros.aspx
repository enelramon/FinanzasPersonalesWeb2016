<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaMiembros.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaMiembros1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>Filtro:
                <asp:DropDownList ID="BuscarPorDropDown" runat="server">
                </asp:DropDownList>
&nbsp;=
                <asp:TextBox ID="FiltroTextBox" runat="server" Width="539px"></asp:TextBox>
&nbsp;
                <asp:Button ID="BtnBuscar" runat="server" OnClick="Button2_Click" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Height="104px" Width="750px">
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
