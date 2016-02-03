<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoEgreso.aspx.cs" Inherits="FinanzasPersonalesWeb.TipoEgreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {
            margin-left: 20px;
        }
        .auto-style4 {
            margin-left: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 45%; height: 78px;">
        <tr>
            <td class="auto-style1"></td>

            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>Tipo de Egreso Id</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TipoEgresoIdTextBox" runat="server" Width="166px"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" CssClass="auto-style2" Height="26px" Text="Buscar" OnClick="BuscarButton_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Descripcion</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="DescripcionTextBox" runat="server" Width="151px"></asp:TextBox>
                <asp:Label ID="MensajeLabel" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Estado</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:RadioButtonList ID="EstadoRadioButtonList" runat="server" Height="16px" Width="107px">
                    <asp:ListItem>Activo</asp:ListItem>
                    <asp:ListItem>No Activo</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Usuario</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="UsuarioDropDownList" runat="server" Width="176px">
                </asp:DropDownList>
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
            <td>
                <asp:Button ID="NuevoButton" runat="server" Text="Nuevo" OnClick="NuevoButton_Click" Width="77px" />
                <asp:Button ID="GuardarButton" runat="server" CssClass="auto-style4" Text="Guardar" OnClick="GuardarButton_Click" Width="77px" />
                <asp:Button ID="ElimanarButton" runat="server" CssClass="auto-style4" Text="Eliminar" OnClick="ElimanarButton_Click" Width="77px" />
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
