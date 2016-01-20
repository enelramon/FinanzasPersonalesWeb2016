<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Transferencia.aspx.cs" Inherits="FinanzasPersonalesWeb.Transferencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #TextArea1 {
            height: 65px;
            width: 197px;
        }
        #ObservacionTextArea {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 164px; width: 1107px">
&nbsp;TransferenciaId&nbsp;&nbsp;
        <asp:TextBox ID="TransferenciaIdLavel" runat="server" Height="19px"></asp:TextBox>

&nbsp;&nbsp;
        <asp:Button ID="Buscarbutton" runat="server" Text="Buscar" Width="87px" />
&nbsp;&nbsp;&nbsp; Fecha&nbsp;&nbsp;
        <asp:TextBox ID="FechaTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Cuenta Origen Id&nbsp;&nbsp;
        <asp:TextBox ID="CuentaOrigenTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Cuenta Destino Id&nbsp;&nbsp;
        <asp:TextBox ID="CuentaDestinoTextBox" runat="server"></asp:TextBox>
&nbsp; Monto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="MontoTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp; Usuario Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="UsuarioIdTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; Observacion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <textarea id="ObservacionTextArea" name="S1"></textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Nuevobutton" runat="server" Text="Nuevo" Width="87px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Guardarbutton" runat="server" Text="Guardar" Width="87px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Eliminarbutton" runat="server" Text="Eliminar" Width="87px" />
    </p>
    <p style="height: 62px">
        &nbsp;</p>
</asp:Content>
