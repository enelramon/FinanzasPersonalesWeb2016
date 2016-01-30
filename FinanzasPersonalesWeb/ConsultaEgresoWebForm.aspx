<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaEgresoWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaEgresoWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 139px;">
        <tr>
            <td>Consultar por:
                <asp:DropDownList ID="ElementosDropDownList" runat="server" Height="20px" Width="150px">
                    <asp:ListItem>EgresoId</asp:ListItem>
                    <asp:ListItem>Fecha</asp:ListItem>
                    <asp:ListItem Value="Monto">Monto</asp:ListItem>
                    <asp:ListItem>CuentaId</asp:ListItem>
                    <asp:ListItem>TipoEgresoId</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="DatosTextBox" runat="server" Width="400px"></asp:TextBox>
                <asp:Button ID="ConsultaBuscarButton" runat="server" OnClick="ConsultaBuscarButton_Click" Text="Buscar" Width="80px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="ElementosGridView" runat="server" Width="728px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
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
