<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rTiposUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.Registro.rTiposUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">Registro de Tipo de Usuarios</div>

        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">
                <%--ID--%>
                <div class="form-group">
                    <label for="TipoUsuarioIdTextBox" class="col-md-3 control-label input-sm">ID: </label>
                    <div class="col-md-2 col-sm-2 col-xs-4">
                        <asp:TextBox ID="TipoUsuarioIdTextBox" CssClass="form-control" runat="server" placeholder="ID"></asp:TextBox>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                        <asp:Button ID="BuscarButton" CssClass="btn btn-info" runat="server" CausesValidation="false" Text="Buscar" Style="margin-left: 11px" OnClick="BuscarButton_Click" />
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                <div class="form-group">
                    <label for="DescripcionTextBox" class="col-md-3 control-label input-sm">Descripcion: </label>
                    <div class="col-md-8 col-sm-2 col-xs-4">
                        <asp:TextBox ID="DescripcionTextBox" CssClass="form-control" runat="server" Enabled="False" placeholder="Descripcion"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="DarkRed" ControlToValidate="DescripcionTextBox" runat="server" SetFocusOnError="true" ErrorMessage="Debe Especificar la Descripcion ">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
            </div>
        </div>

        <div class="panel-footer">
            <div class="text-center">
                <div class="form-group" style="display: inline-block">
                    <asp:Button ID="BtnNuevo" runat="server" Text="Nuevo" CausesValidation="false" CssClass="btn btn-info" Width="73px" OnClick="BtnNuevo_Click" />
                    <asp:Button ID="BtnModificar" runat="server" CausesValidation="false" Text="Modificar" CssClass="btn btn-info" OnClick="BtnModificar_Click" />
                    <asp:Button ID="BtnCancelar" runat="server" CausesValidation="false" Text="Cancelar" CssClass="btn btn-info" Enabled="False" OnClick="BtnCancelar_Click" />
                    <asp:Button ID="BtnGuardar" CausesValidation="true" runat="server" Text="Guardar" CssClass="btn btn-info" Enabled="False" OnClick="BtnGuardar_Click" />
                    <asp:Button ID="BtnEliminar" CausesValidation="false" runat="server" Text="Eliminar" CssClass="btn btn-info" OnClick="BtnEliminar_Click" />
                </div>
            </div>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" Height="69px" />
</asp:Content>
