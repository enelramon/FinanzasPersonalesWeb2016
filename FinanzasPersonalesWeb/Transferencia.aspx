﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Transferencia.aspx.cs" Inherits="FinanzasPersonalesWeb.Transferencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #TextArea1 {
            height: 65px;
            width: 197px;
        }
        #ObservacionTextArea {
            height: 33px;
        }
        html {
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  background:#bff5c7;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 34px; width: 435px">
&nbsp;TransferenciaId&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TransferenciaIdTextBox" runat="server" Height="25px" Width="132px"></asp:TextBox>

&nbsp;&nbsp;
        <asp:Button ID="Buscarbutton" runat="server" Text="Buscar" Width="87px" />
        <tr>
        <td>
    </p>
    <p style="height: 32px; width: 313px">
        Fecha<td/>
        <td>&nbsp;&nbsp</td>
        <td>&nbsp;&nbsp</td>
            </tr>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="FechaTextBox" runat="server" Height="25px" Width="132px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; 
    </p>
    <p style="height: 32px; width: 311px">
        Cuenta Origen Id&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="CuentaOrigenTextBox" runat="server" Height="25px" Width="132px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;</p>
    <p style="height: 32px; width: 1107px">
        Cuenta Destino Id&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="CuentaDestinoTextBox" runat="server" Height="25px" Width="132px"></asp:TextBox>
&nbsp; 
    </p>
    <p style="height: 58px; width: 979px">
        Monto&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="MontoTextBox" runat="server" Height="25px" Width="132px"></asp:TextBox>
&nbsp;&nbsp; Usuario Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="UsuarioIdTextBox" runat="server" Height="25px" Width="132px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; Observacion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ObservacionTextBox" runat="server" Height="25px" Width="132px"></asp:TextBox>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p style="height: 40px; width: 381px">
&nbsp;<asp:Button ID="Nuevobutton" runat="server" Text="Nuevo" Width="87px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click1" Text="Guardar" Width="78px" />
        &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Eliminarbutton" runat="server" Text="Eliminar" Width="87px" OnClick="Eliminarbutton_Click" />
    </p>
    <p style="height: 94px">
        &nbsp;</p>
</asp:Content>
