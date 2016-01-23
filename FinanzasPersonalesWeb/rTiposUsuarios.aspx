<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rTiposUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.rTiposUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 181px; width: 953px" style="margin-left: 65px">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
        <asp:TextBox ID="CodigoTextBox" runat="server" style="margin-left: 68px"></asp:TextBox>
        <asp:Button ID="BtnBuscar" runat="server" CausesValidation="false" Text="Buscar" style="margin-left: 11px" OnClick="BtnBuscar_Click" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
        <asp:TextBox ID="DescripcionTextBox" runat="server" style="margin-left: 40px" Width="439px" Enabled="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="DarkRed" ControlToValidate="DescripcionTextBox" runat="server"  SetFocusOnError="true"  ErrorMessage="Debe Especificar la Descripcion ">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="BtnNuevo" runat="server" Text="Nuevo"  CausesValidation="false" CssClass="btn-info" style="margin-left: 122px" Width="73px" OnClick="BtnNuevo_Click" />

        <asp:Button ID="BtnModificar" runat="server" CausesValidation="false" Text="Modificar" CssClass="btn-info" style="margin-left: 14px" OnClick="BtnModificar_Click" />

        <asp:Button ID="BtnCancelar" runat="server" CausesValidation="false" Text="Cancelar" CssClass="btn-info" style="margin-left: 10px" Enabled="False" OnClick="BtnCancelar_Click" />

        <asp:Button ID="BtnGuardar" CausesValidation="true" runat="server" Text="Guardar" CssClass="btn-info" style="margin-left: 11px" Enabled="False" OnClick="BtnGuardar_Click" />

    &nbsp;
        <asp:Button ID="BtnEliminar" CausesValidation="false" runat="server" Text="Eliminar" CssClass="btn-info" style="margin-left: 2px" OnClick="BtnEliminar_Click" />

    </div>
    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red"  runat="server" Height="69px" />
</asp:Content>
