<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiembrosWebFor.aspx.cs" Inherits="FinanzasPersonalesWeb.MiembrosWebFor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 472px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 133px;">
        <tr>
            <td class="auto-style4">MiembroId:
                <asp:TextBox ID="TbMiembroId" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Nombre:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Estado:
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Activo" />
&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Inactivo" />

            
      
        </tr>
                <tr>
            <td class="auto-style4">Usuario:
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="BtnLimpiar" runat="server" Text="Limpiar" />
&nbsp;&nbsp;
                <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" />
&nbsp;&nbsp;
                <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" />

            
      
        </tr>
        </table>
</asp:Content>
