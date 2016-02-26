<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rPersonas.aspx.cs" Inherits="FinanzasPersonalesWeb.Registros.rPersonas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-success">
        <div class="panel-heading">Registro de Personas</div>
        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">

                <%--PersonaId--%>
                <div class="form-group">
                    <label for="PersonaIdTextBox" class="col-md-3 control-label input-sm">Persona Id: </label>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                        <asp:TextBox ID="PersonaIdTextBox" runat="server" ReadOnly="True" placeholder="0" class="form-control input-sm"></asp:TextBox>
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
                        <asp:TextBox ID="NombreTextBox" runat="server" placeholder="Escriba su nombre aqui" Class="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>



            </div>
            <div class="form-inline col-md-12" role="form">
                <%--Tipo telefono--%>
                <div class="form-group">
                    <label for="TipoTelefonoDropDownLkist" class="col-md-6 control-label input-sm">Tipo Telefono</label>
                    <div class="col-md-6">
                        <asp:DropDownList ID="TipoTelefonoDropDownList" runat="server" Class="form-control input-sm"></asp:DropDownList>
                    </div>
                </div>

                <%--Telefono--%>
                <div class="form-group">
                    <label for="TelefonoTexBox" class="col-md-2 control-label input-sm">Telefono</label>

                    <div class="col-md-2">
                        <asp:TextBox ID="TelefonoTexBox" runat="server" Class="form-control input-sm"></asp:TextBox>
                    </div>
                     

                </div>
                 <asp:Button ID="AgregarButton" CssClass="btn btn-primary" runat="server" Text="Agregar" OnClick="AgregarButton_Click" />


            </div>
            
                <asp:GridView class="table" ID="TelefonosGridView" runat="server" >
                   
                </asp:GridView>
            

        </div>
    </div>
     <div class="panel-footer">
            <div class="text-center">
                <div class="form-group" style="display: inline-block">

                    <asp:Button Text="Nuevo" class ="btn btn-warning btn-sm" runat="server" ID="NuevoButton"  />
                    <asp:Button Text="Guardar" class ="btn btn-success btn-sm" runat="server" ID="GuadarButton" OnClick="GuadarButton_Click"  />
                    <asp:Button Text="Eliminar" class ="btn btn-danger btn-sm" runat="server" ID="EliminarButton"  />

                </div>
            </div>

        </div>
</asp:Content>
