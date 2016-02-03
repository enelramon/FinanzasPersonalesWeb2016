<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rMetasWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.Registros.MetasWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row form-horizontal">
            <div class="form-group">
                <div class="col-md-2 col-xs-2">
                    <asp:Label ID="Label1" runat="server" CssClass="" Text="MetaId:"></asp:Label>
                </div>
                <div class="col-md-8 col-xs-8">
                    <asp:TextBox ID="MetaIdTextBox" runat="server" placeholder="Ingrese Id" CssClass="form-control" ></asp:TextBox>
                </div>
                <div class="col-md-2 col-xs-2">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="BuscarButton_Click"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-2 col-md-2">
                    <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
                </div>
                <div class="col-xs-10 col-md-10">
                    <asp:TextBox ID="DescripcionTextBox" runat="server" CssClass="form-control " placeholder="Ingrese una Descripcion"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-2 col-md-2">
                    <asp:Label ID="Label4" runat="server" Text="Tipo de Ingreso"></asp:Label>
                </div>
                <div class="col-xs-10 col-md-10">
                    <asp:DropDownList ID="TipoDeIngresoDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-2 col-md-2">
                    <asp:Label ID="Label3" runat="server" Text="Monto:"></asp:Label>
                </div>
                <div class="col-xs-8 col-md-8">
                    <asp:TextBox ID="MontoTextBox" runat="server" CssClass="form-control "></asp:TextBox>
                </div>
                <div class="col-xs-2 col-md-2">
                    <asp:Button ID="AgregarButton" runat="server" Text="Agregar" CssClass="btn btn-primary" OnClick="AgregarButton_Click"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-2 col-md-2">
                    <asp:Label ID="Label5" runat="server" Text="Metas"></asp:Label>
                </div>
                <div class="col-xs-10 col-md-10">
                    <asp:ListBox ID="MetasListBox" runat="server" CssClass="form-control"></asp:ListBox>
                </div>
            </div>
            <div class="btn-group">
                <div class="col-xs-4 col-md-4">
                    <asp:Button Text="Nuevo" runat="server" ID="NuevoButton" CssClass="btn btn-primary" OnClick="NuevoButton_Click" />
                </div>
                <div class="col-xs-4 col-md-4">
                    <asp:Button Text="Guardar" runat="server" ID="GuadarButton" CssClass="btn btn-primary" OnClick="GuadarButton_Click1" />
                </div>
                <div class="col-xs-4 col-md-4">
                    <asp:Button Text="Eliminar" runat="server" ID="EliminarButton" CssClass="btn btn-primary" OnClick="EliminarButton_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
