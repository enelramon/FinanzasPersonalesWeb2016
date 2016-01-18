<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.rUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 82px;
        }
        .auto-style4 {
            margin-left: 106px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table ID="Table1" runat="server" Height="111px" Width="526px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="NombreTextBox" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="ApellidoTextBox" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label5" runat="server" Text="Usuario"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="UsuarioTextBox" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="PassTextBox" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label7" runat="server" Text="Email"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" CssClass="auto-style4" />
    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" OnClick="GuardarButton_Click" />
    <br />
    <br />
    <asp:CheckBox ID="AceptarCheckBox" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Acepto los Terminos y Condiciones de uso." />
</asp:Content>
