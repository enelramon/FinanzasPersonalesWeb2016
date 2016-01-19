<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoIngreso.aspx.cs" Inherits="FinanzasPersonalesWeb.TipodeIngreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 410px;
        }
        .auto-style4 {
            width: 44%;
        }
        .auto-style5 {
            width: 424px;
        }
        .auto-style6 {
            width: 424px;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Text="Tipo de Ingresos Id"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style5">
                <asp:TextBox ID="TipoIngresoTextBox" runat="server" Width="149px" placeholder="Escribe el Id"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BuscarButton" runat="server" Text="Buscar" Width="62px" OnClick="BuscarButton_Click" />&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Text="Descripcion"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="DescripcionTextBox" runat="server" Width="212px" placeholder="Escribe una Descripcion"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style6">
                <asp:RadioButtonList ID="EstadoRadioButtonList" runat="server" Height="19px" RepeatDirection="Horizontal" Width="202px">
                    <asp:ListItem Selected="True">Activo</asp:ListItem>
                    <asp:ListItem>No Activo</asp:ListItem>
                </asp:RadioButtonList>
                    </td>
            <td>
                &nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                    s</td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style6">
                <asp:DropDownList ID="UsuarioDropDownList" runat="server" Height="24px" Width="214px">
                </asp:DropDownList>
                    </td>
            <td>&nbsp;</td>
        </tr
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="GuardarButton" runat="server" Text="Guardar" Width="101px" OnClick="GuardarButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ModificarButton" runat="server" Text="Modificar" Width="98px" OnClick="ModificarButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" Width="102px" OnClick="EliminarButton_Click" />
            </td>        
        </tr>
    </table>
</asp:Content>
