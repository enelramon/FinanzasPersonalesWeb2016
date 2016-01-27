<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoIngreso.aspx.cs" Inherits="FinanzasPersonalesWeb.TipoIngreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 410px;
        }
        .auto-style5 {
            width: 391px;
        }
        .auto-style7 {
            width: 402px;
            height: 48px;
        }
        .auto-style8 {
            width: 402px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <center>
        <table class="auto-style5" style="border: thick ridge #808080">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" Text="Tipo de Ingresos Id"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" >
                    <asp:TextBox ID="TipoIngresoTextBox" runat="server" Width="224px" placeholder ="Escribe un id"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" Width="62px" OnClick="BuscarButton_Click" /></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="Descripcion"></asp:Label>
            <tr>
                <td class="auto-style8">
                    <asp:TextBox ID="DescripcionTextBox" runat="server" Width="309px" placeholder ="Escribe una descripcion"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="EstadoRadioButtonList" runat="server" Height="19px" RepeatDirection="Horizontal" Width="202px">
                        <asp:ListItem Selected="True">Activo</asp:ListItem>
                        <asp:ListItem>No Activo</asp:ListItem>
                    </asp:RadioButtonList>
                        </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Usuarios"></asp:Label>
                        </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:DropDownList ID="UsuarioDropDownList" runat="server" Height="26px" Width="269px">
                    </asp:DropDownList>
                        </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" Width="101px" OnClick="GuardarButton_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ModificarButton" runat="server" Text="Modificar" Width="98px" OnClick="ModificarButton_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" Width="102px" OnClick="EliminarButton_Click" />
                </td>        
            </tr>
        </table>
     </center>
</asp:Content>
