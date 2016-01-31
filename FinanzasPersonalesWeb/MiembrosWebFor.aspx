<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiembrosWebFor.aspx.cs" Inherits="FinanzasPersonalesWeb.MiembrosWebFor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 472px;
        }
        .auto-style5 {
            width: 472px;
            height: 77px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 133px;">
        <tr>
            <td class="auto-style4">MiembroId:
                <asp:TextBox ID="TbMiembroId" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="BtnBuscar" class ="btn btn-info" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Nombre:
                <asp:TextBox ID="TbNombre" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Estado:
                <asp:RadioButtonList ID="EstadoRbList" runat="server">
                    <asp:ListItem>Activo</asp:ListItem>
                    <asp:ListItem>Inactivo</asp:ListItem>
                </asp:RadioButtonList>

            
      
        </tr>
                <tr>
            <td class="auto-style4">Usuario:
                <asp:DropDownList ID="DropDownUsuario" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="BtnLimpiar" class ="btn btn-warning" runat="server" Text="Limpiar" OnClick="BtnLimpiar_Click" />
&nbsp;&nbsp;
                <asp:Button ID="BtnGuardar" class ="btn btn-success" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
&nbsp;&nbsp;
                <asp:Button ID="BtnEliminar" class ="btn btn-danger" runat="server" Text="Eliminar" OnClick="BtnEliminar_Click" />

            
      
        </tr>
        </table>
</asp:Content>
