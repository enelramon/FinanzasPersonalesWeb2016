<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rCuentas.aspx.cs" Inherits="FinanzasPersonalesWeb.Registros.rCuentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">Registro de Cuentas</div>

         <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
                            ControlToValidate="TbCuentaId" ErrorMessage="Sólo Valores Numericos" />

         <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="integer" 
                            ControlToValidate="TbBalance" ErrorMessage="Sólo Valores Numericos" /> </div>

          <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">

                <div class="panel-body">
                    <div class="form-horizontal col-md-12" role="form">


                                <%-- Cuenta ID --%>
                 <div class="form-group">
                   <asp:Label ID="Label1" runat="server" class="col-md-3 control-label input-sm" Text="CuentaId:"></asp:Label>
                    <div class="col-md-1 col-sm-1 col-xs-2">
                        <asp:TextBox ID="TbCuentaId" runat="server"  placeholder="" Class="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-2 col-sm-2 col-xs-4">
                        <asp:Button ID="BuscarButton" runat="server"  Height="26px" CssClass="btn btn-sm btn-info" Text="Buscar" OnClick="BuscarButton_Click" />
                    </div>
                    <div class="col-md-1">
                    </div>
                  </div>
            
                        <%-- Descripcion --%>

                <div class="form-group">
                   <asp:Label ID="Label2" runat="server" class="col-md-3 control-label input-sm" Text="Descripción:"></asp:Label>
                   <div class="col-md-6">
                      <asp:TextBox ID="TbDescripcion" runat="server" Class="form-control input-sm"></asp:TextBox>
                  </div>
                  <asp:Label ID="MensajeLabel" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>

                        <%-- Balance --%>

                 <div class="form-group">
                   <asp:Label ID="Label54" runat="server" class="col-md-3 control-label input-sm" Text="Balance:"></asp:Label>
                   <div class="col-md-1">
                      <asp:TextBox ID="TbBalance" runat="server" Class="form-control input-sm"></asp:TextBox>
                  </div>
                  <asp:Label ID="Label546" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>

                        <%-- Porciento --%>

                    <div class="form-group">
                   <asp:Label ID="Label3" runat="server" class="col-md-3 control-label input-sm" Text="Porciento:"></asp:Label>
                   <div class="col-md-1">
                      <asp:TextBox ID="TbPorciento" runat="server" Class="form-control input-sm"></asp:TextBox>
                  </div>
                  <asp:Label ID="Label4" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>

                        <%-- Usuario Drop Down --%>

                    <div class="form-group">
                   <asp:Label ID="Label7" runat="server" class="col-md-3 control-label input-sm" Text="Usuario:"></asp:Label>
                   <div class="col-md-6">
                  <asp:DropDownList ID="DropDownUsuario" runat="server"> </asp:DropDownList>
                  </div>
                  <asp:Label ID="Label8" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>


                        <%-- Botones Inferiores --%>

        <div class="panel-footer">
            <div class="text-center">
                <div class="form-group" style="display: inline-block">

                <asp:Button ID="LimpiarButton" class ="btn btn-warning btn-sm" runat="server" Text="Limpiar" OnClick="LimpiarButton_Click" />
                <asp:Button ID="GuardarButton" class ="btn btn-success btn-sm" runat="server" Text="Guardar" OnClick="GuardarButton_Click" />
                <asp:Button ID="EliminarButton" class ="btn btn-danger btn-sm" runat="server" Text="Eliminar" OnClick="EliminarButton_Click" />

                </div>
            </div>
        </div>
    <div class="col-md-12" id="AlertNotificationDiv" runat="server">
      <asp:Label id="AlertNotificationBox" runat="server"/>
    </div>
  </div> 
</asp:Content>
