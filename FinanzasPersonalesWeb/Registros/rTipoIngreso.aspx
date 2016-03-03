<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rTipoIngreso.aspx.cs" Inherits="FinanzasPersonalesWeb.Registros.rTipoIngreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .col-centered
        {
          display: block;
          margin-left: auto;
          margin-right: auto;
          text-align: center;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-success">
        <div class="panel-heading">Registro de Tipo Ingreso</div>
        <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">
            <div class="form-group">

                <%--TipoIngresoId--%>
                <div class="form-group">
                    <asp:Label For="TipoIngresoTexBox" ID="Label1" class="col-md-3 control-label input-sm" runat="server" Text="Id"></asp:Label>
                    <div class="col-md-6 col-sm-4 col-lg-6">
                        <asp:TextBox ID="TipoIngresoTextBox" CssClass="form-control" runat="server" placeholder ="Escribe un id"></asp:TextBox>
                    </div>
                    <div class="col-md-2 col-sm-1 col-lg-2">
                        <asp:Button For="TipoIngresoTexBox" ID="BuscarButton" runat="server" CssClass="btn btn-info" Text="Buscar" OnClick="BuscarButton_Click" />
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                <%--Descripcion--%>
                <div class="form-group">
                     <asp:Label For="DescripcionTexBox" ID="Label2" class="col-md-3 control-label input-sm" runat="server" Text="Descripcion"></asp:Label>
                      <div class="col-lg-6 col-md-6">
                          <asp:TextBox ID="DescripcionTextBox" CssClass="form-control" runat="server" placeholder ="Escribe una descripcion"></asp:TextBox>
                      </div>
                      <div class="col-md-6">
                                 <asp:requiredfieldvalidator id="RequiredFieldValidator1" forecolor="Red" errormessage="Por Favor Ingrese una Descripcion" controltovalidate="DescripcionTextBox" runat="server">
                                 </asp:requiredfieldvalidator>
                      </div>
                </div>

                <%--Estado--%>
                <div class="form-group">
                    <asp:Label For="EstadoRadioButtonList" ID="Label3" class="col-md-3 control-label input-sm" runat="server" Text="Estado"></asp:Label>
                    <div class="col-lg-8 col-md-6">
                        <asp:RadioButtonList ID="EstadoRadioButtonList" runat="server" RepeatDirection="Horizontal" Width="365px">
                            <asp:ListItem Selected="True">Activo</asp:ListItem>
                            <asp:ListItem>No Activo</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-md-1">
                     </div>
                </div>

                <%--Usuario--%>
                <div class="form-group">
                        <asp:Label For="UsuarioDropDownList" ID="Label4" class="col-md-3 control-label input-sm" runat="server" Text="Usuarios"></asp:Label>
                        <div class="col-lg-6 col-md-6">
                            <asp:DropDownList ID="UsuarioDropDownList" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                </div>

                <div class="col-lg-12 col-centered">
                        <asp:Button ID="GuardarButton" CssClass="btn btn-success" runat="server" Text="Guardar" Width="101px" OnClick="GuardarButton_Click" />
                    
                        <asp:Button ID="LimpiarButton" CssClass="btn btn-primary" runat="server" Text="Limpiar" Width="98px" OnClick="LimpiarButton_Click" />
                    
                        <asp:Button ID="EliminarButton" CssClass="btn btn-danger" runat="server" Text="Eliminar" Width="102px" OnClick="EliminarButton_Click" />      
                </div>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
