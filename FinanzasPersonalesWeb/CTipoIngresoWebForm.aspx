<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CTipoIngresoWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.CTipoIngresoWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 378px;
        }
        </style>
</asp:Content>
    

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />

    <center class="auto-style4">
             Consultar por Id
            <asp:TextBox ID="CodigoTextBox" runat="server" Width="255px" placeholder="Escribe un id"></asp:TextBox>

            &nbsp;&nbsp;&nbsp;

            <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarButton_Click" Text="Buscar" />

             <br />

            <asp:GridView ID="ConsultaGridView" runat="server" Height="133px" Width="441px">
            </asp:GridView>
    </center>
</asp:Content>
