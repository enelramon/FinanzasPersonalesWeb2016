<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipodeIngreso.aspx.cs" Inherits="FinanzasPersonalesWeb.TipodeIngreso" %>
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
                <asp:Label ID="Label4" runat="server" Text="Tipo de Ingresos Id"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td>
                <asp:TextBox ID="TipoIngresoTextBox" runat="server" Width="147px"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" Text="Buscar" Width="62px" />
                    </td>
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
                <asp:TextBox ID="DescripcionTextBox" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style2">
                <asp:RadioButton ID="ActivoRadioButton" runat="server" Checked="True" Text="Activo" />
                <asp:RadioButton ID="FalsoRadioButton" runat="server" Text="No Activo" />
                    </td>
            <td>
                &nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                    </td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style2">
                <asp:DropDownList ID="UsuarioDropDownList" runat="server" Height="24px" Width="214px">
                </asp:DropDownList>
                    </td>
            <td>&nbsp;</td>
        </tr
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="GuardarButton" runat="server" Text="Guardar" Width="101px" />
                <asp:Button ID="ModificarButton" runat="server" Text="Modificar" Width="98px" />
                <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" Width="102px" />
            </td>        
        </tr>
    </table>
</asp:Content>
