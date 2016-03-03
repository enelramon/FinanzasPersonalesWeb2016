<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rIngresos.aspx.cs" Inherits="FinanzasPersonalesWeb.Registros.rIngresos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            display: block;
            padding: 8px 16px;
            font-size: 15px;
            line-height: 1.42857143;
            color: #2b3e50;
            background-color: #ffffff;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="panel panel-success">
        <div class="panel-heading">Registro de Ingresos</div>
        <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">
            <div class="form-group">

                <%--IngresoId--%>
                <div class="form-group">
                    <asp:Label For="IngresoTexBox" ID="Label1" class="col-md-3 control-label input-sm" runat="server" Text="Id"></asp:Label>
                    <div class="col-md-6 col-sm-4 col-lg-6">
                        <asp:TextBox ID="IngresoTextBox" CssClass="form-control" runat="server" placeholder ="Escribe un id"></asp:TextBox>
                    </div>
                    <div class="col-md-2 col-sm-1 col-lg-2">
                        <asp:Button For="IngresoTexBox" ID="BuscarButton" runat="server" CssClass="btn btn-info" Text="Buscar" OnClick="BuscarButton_Click" />
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                
                <%--Fecha--%>
                <div class="form-group">
                     <asp:Label For="FechaTexBox" ID="Label7" class="col-md-3 control-label input-sm" runat="server" Text="Monto"></asp:Label>
                      <div class="col-lg-6 col-md-6">
                          <asp:TextBox ID="FechaTexBox" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                      <div class="col-md-6">
                                 <asp:requiredfieldvalidator id="RequiredFieldValidator3" forecolor="Red" errormessage="Por Favor Ingrese una Fecha" controltovalidate="FechaTexBox" runat="server">
                                 </asp:requiredfieldvalidator>
                      </div>
                </div>

                <%--Monto--%>
                <div class="form-group">
                     <asp:Label For="MontoTexBox" ID="Label2" class="col-md-3 control-label input-sm" runat="server" Text="Monto"></asp:Label>
                      <div class="col-lg-6 col-md-6">
                          <asp:TextBox ID="MontoTexBox" CssClass="form-control" runat="server" placeholder ="Escribe un Monto"></asp:TextBox>
                      </div>
                      <div class="col-md-6">
                                 <asp:requiredfieldvalidator id="RequiredFieldValidator1" forecolor="Red" errormessage="Por Favor Ingrese una Monto" controltovalidate="MontoTexBox" runat="server">
                                 </asp:requiredfieldvalidator>
                      </div>
                </div>

                <%--Cuentas--%>
                <div class="form-group">
                        <asp:Label For="CuentaDropDownList" ID="Label5" class="col-md-3 control-label input-sm" runat="server" Text="Cuentas"></asp:Label>
                        <div class="col-lg-6 col-md-6">
                            <asp:DropDownList ID="CuentaDropDownList" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                </div>

                <%--Miembro--%>
                <div class="form-group">
                        <asp:Label For="MiembroDropDownList" ID="Label4" class="col-md-3 control-label input-sm" runat="server" Text="Miembros"></asp:Label>
                        <div class="col-lg-6 col-md-6">
                            <asp:DropDownList ID="MiembroDropDownList" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                </div>

                <%--TipoIngresos--%>
                <div class="form-group">
                        <asp:Label For="TipoIngresoDropDownList" ID="Label3" class="col-md-3 control-label input-sm" runat="server" Text="TipoIngresos"></asp:Label>
                        <div class="col-lg-6 col-md-6">
                            <asp:DropDownList ID="TipoIngresoDropDownList" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                </div>

                <%--Observacion--%>
                <div class="form-group">
                     <asp:Label For="ObservacionTexBox" ID="Label6" class="col-md-3 control-label input-sm" runat="server" Text="Observacion"></asp:Label>
                      <div class="col-lg-6 col-md-6">
                          <asp:TextBox ID="ObservacionTexBox" CssClass="form-control" runat="server" placeholder ="Escribe una Observacion" Height="122px"></asp:TextBox>
                      </div>
                      <div class="col-md-6">
                                 <asp:requiredfieldvalidator id="RequiredFieldValidator2" forecolor="Red" errormessage="Por Favor Ingrese una Observacion" controltovalidate="ObservacionTexBox" runat="server">
                                 </asp:requiredfieldvalidator>
                      </div>
                </div>

                <div class="col-lg-12 col-md-12 col-centered">
                    <div class="text-center">
                        <asp:Button ID="GuardarButton" CssClass="btn btn-success" runat="server" Text="Guardar" Width="101px" OnClick="GuardarButton_Click" />
                    
                        <asp:Button ID="LimpiarButton" CssClass="btn btn-primary" runat="server" Text="Limpiar" Width="98px" OnClick="LimpiarButton_Click" />
                    
                        <asp:Button ID="EliminarButton" CssClass="btn btn-danger" runat="server" Text="Eliminar" Width="102px" OnClick="EliminarButton_Click" />     
                    </div>    
                </div>            
            </div>
        </div>
        </div>
    </div>
</asp:Content>
