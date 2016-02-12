<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rPaises.aspx.cs" Inherits="FinanzasPersonalesWeb.Registros.rPaises" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">Registro de Paises</div>

        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">

                <%--IdPais--%>
                <div class="form-group">
                    <label for="IdTextBox" class="col-md-3 control-label input-sm">Id: </label>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                        <asp:TextBox ID="IdTextBox" runat="server" ReadOnly="True" placeholder="0" class="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                <%--Nombre--%>
                <div class="form-group">
                    <label for="NombreTextBox" class="col-md-3 control-label input-sm">Nombre</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="NombreTextBox" runat="server" Class="form-control input-sm"></asp:TextBox>


                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

            </div>
        </div>

        <div class="panel-footer">
            <div class="text-center">
                <div class="form-group" style="display: inline-block">

                    <asp:Button Text="Nuevo" class ="btn btn-warning btn-sm" runat="server" ID="NuevoButton"  />
                    <asp:Button Text="Guardar" class ="btn btn-success btn-sm" runat="server" ID="GuadarButton"  />
                    <asp:Button Text="Eliminar" class ="btn btn-danger btn-sm" runat="server" ID="EliminarButton"  />

                </div>
            </div>

        </div>
    </div>


</asp:Content>
