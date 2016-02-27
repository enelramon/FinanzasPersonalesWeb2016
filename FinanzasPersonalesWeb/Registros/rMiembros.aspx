<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rMiembros.aspx.cs" Inherits="FinanzasPersonalesWeb.Registros.MiembrosWebFor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">Registro de Miembros</div>

         <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
                            ControlToValidate="TbMiembroId" ErrorMessage="Así no" /></div>


          <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">

                <div class="panel-body">
                    <div class="form-horizontal col-md-12" role="form">

                 <div class="form-group">
                   <asp:Label ID="Label1" runat="server" class="col-md-3 control-label input-sm" Text="MiembroId:"></asp:Label>
                    <div class="col-md-6 col-sm-2 col-xs-4">
                        <asp:TextBox ID="TbMiembroId" runat="server"  placeholder="" Class="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-2 col-sm-2 col-xs-4">
                        <asp:Button ID="BtnBuscar" runat="server"  Height="26px" CssClass="btn btn-sm btn-info" Text="Buscar" OnClick="BtnBuscar_Click" />
                    </div>
                    <div class="col-md-1">
                    </div>
                  </div>
            
                <div class="form-group">
                   <asp:Label ID="Label2" runat="server" class="col-md-3 control-label input-sm" Text="Nombre:"></asp:Label>
                   <div class="col-md-6">
                      <asp:TextBox ID="TbNombre" runat="server" Class="form-control input-sm"></asp:TextBox>
                  </div>
                  <asp:Label ID="MensajeLabel" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>

                 <div class="form-group">
                   <asp:Label ID="Label54" runat="server" class="col-md-3 control-label input-sm" Text="Apellidos:"></asp:Label>
                   <div class="col-md-6">
                      <asp:TextBox ID="TbApellido" runat="server" Class="form-control input-sm"></asp:TextBox>
                  </div>
                  <asp:Label ID="Label546" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>

                    <div class="form-group">
                   <asp:Label ID="Label3" runat="server" class="col-md-3 control-label input-sm" Text="Parentesco:"></asp:Label>
                   <div class="col-md-6">
                      <asp:TextBox ID="TbParentesco" runat="server" Class="form-control input-sm"></asp:TextBox>
                  </div>
                  <asp:Label ID="Label4" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>

                    <div class="form-group">
                   <asp:Label ID="Label5" runat="server" class="col-md-3 control-label input-sm" Text="Estado:"></asp:Label>
                   <div class="col-md-6">
                                      <asp:RadioButtonList ID="EstadoRbList" runat="server">
                    <asp:ListItem>Activo</asp:ListItem>
                    <asp:ListItem>Inactivo</asp:ListItem>
                </asp:RadioButtonList>
                  </div>
                  <asp:Label ID="Label6" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>

                    <div class="form-group">
                   <asp:Label ID="Label7" runat="server" class="col-md-3 control-label input-sm" Text="Usuario:"></asp:Label>
                   <div class="col-md-6">
                  <asp:DropDownList ID="DropDownUsuario" runat="server"> </asp:DropDownList>
                  </div>
                  <asp:Label ID="Label8" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>

        <div class="panel-footer">
            <div class="text-center">
                <div class="form-group" style="display: inline-block">

                <asp:Button ID="BtnLimpiar" class ="btn btn-warning btn-sm" runat="server" Text="Limpiar" OnClick="BtnLimpiar_Click" />
                <asp:Button ID="BtnGuardar" class ="btn btn-success btn-sm" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
                <asp:Button ID="BtnEliminar" class ="btn btn-danger btn-sm" runat="server" Text="Eliminar" OnClick="BtnEliminar_Click" />

                </div>
            </div>

        </div>

    <div class="col-md-12" id="AlertNotificationDiv" runat="server">
      <asp:Label id="AlertNotificationBox" runat="server"/>
    </div>
</div>
    

      

            
      
        </tr>
        
</asp:Content>
