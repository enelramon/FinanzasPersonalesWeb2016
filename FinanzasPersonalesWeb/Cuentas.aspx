<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cuentas.aspx.cs" Inherits="FinanzasPersonalesWeb.Cuentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 410px;
        }
        .auto-style4 {
            width: 41%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Cuentas Id"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td>
                <asp:TextBox ID="CuentasTextBox" runat="server" Width="149px" placeholder="Escribe el Id"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" Text="Buscar" Width="62px" OnClick="BuscarButton_Click" />&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Descripcion"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:TextBox ID="DescripcionTextBox" runat="server" Width="212px" placeholder="Escribe una Descripcion"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Balance"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style2">
                <asp:TextBox ID="CuentaTextBox" runat="server" Width="210px" placeholder="Escribe el Balance"></asp:TextBox>
                    </td>
            <td>
                &nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Porciento"></asp:Label>
                    </td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style2">
                <asp:TextBox ID="PorcientoTextBox" runat="server" Width="210px" placeholder="Escribe el Porciento"></asp:TextBox>
                    </td>
            <td>&nbsp;</td>
        </tr
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="GuardarButton" runat="server" Text="Guardar" Width="101px" OnClick="GuardarButton_Click" />
                <asp:Button ID="ModificarButton" runat="server" Text="Modificar" Width="98px" OnClick="ModificarButton_Click" />
                <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" Width="102px" OnClick="EliminarButton_Click" />
            </td>        
        </tr>
    </table>
</asp:Content>
