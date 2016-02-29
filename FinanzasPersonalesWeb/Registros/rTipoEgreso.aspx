<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rTipoEgreso.aspx.cs" Inherits="FinanzasPersonalesWeb.TipoEgreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-success">
        <div class="panel-heading">Registro de Tipo egresos</div>

        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">

                <%--TipoEgresoId--%>
                 <div class="form-group">
                   <asp:Label ID="Label1" runat="server" class="col-md-3 control-label input-sm" Text="TipoEgresoId"></asp:Label>
                    <div class="col-md-6 col-sm-2 col-xs-4">
                        <asp:TextBox ID="TipoEgresoIdTextBox" runat="server"  placeholder="Ingrese el TipoEgresoId" Class="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-2 col-sm-2 col-xs-4">
                        <asp:Button ID="BuscarButton" runat="server"  Height="26px" CssClass="btn btn-sm btn-info" Text="Buscar" OnClick="BuscarButton_Click" />
                    </div>
                    <div class="col-md-1">
                    </div>
                  </div>
            
                <%--Descripcion--%>
                <div class="form-group">
                   <asp:Label ID="Label2" runat="server" class="col-md-3 control-label input-sm" Text="Descripcion"></asp:Label>
                   <div class="col-md-6">
                      <asp:TextBox ID="DescripcionTextBox" runat="server" Class="form-control input-sm" placeholder="Ingrese la descripcion"></asp:TextBox>
                  </div>
                  <asp:Label ID="MensajeLabel" class="col-md-2 control-label input-sm" runat="server"></asp:Label>                        
                  <div class="col-md-1">
                  </div>  
                </div>
    
                <%--Estado--%>
                <div class="form-group">
                   <asp:Label ID="Label4" runat="server" class="col-md-3 control-label input-sm" Text="Estado"></asp:Label>
                   <div class="col-md-8">
                       <asp:RadioButtonList ID="EstadoRadioButtonList" runat="server" Height="16px" Width="107px">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>No Activo</asp:ListItem>
                       </asp:RadioButtonList>
                   </div>
                   <div class="col-md-1">
                   </div>
               </div>
           
                <%--Usuario--%>
               <div class="form-group">
                   <asp:Label ID="Label3" runat="server" class="col-md-3 control-label input-sm" Text="Usuario"></asp:Label>
                   <div class="col-md-7">
                      <asp:DropDownList ID="UsuarioDropDownList" runat="server" Class="form-control input-sm">
                      </asp:DropDownList>
                   </div>
                   <div class="col-md-2">
                   </div>  
               </div>
      
    </div>
      </div>

          <div class="panel-footer">
              <div class="text-center">
                  <div class="form-group" style="display: inline-block">
                       <asp:Button ID="NuevoButton" runat="server" CssClass="btn btn-sm btn-info" Text="Nuevo" OnClick="NuevoButton_Click" Width="60px" />
                       <asp:Button ID="GuardarButton" runat="server" CssClass="btn btn-sm  btn-info" Text="Guardar" OnClick="GuardarButton_Click" Width="60px" />
                       <asp:Button ID="ElimanarButton" runat="server" CssClass="btn btn-sm btn-info" Text="Eliminar" OnClick="ElimanarButton_Click" Width="60px" />
                  </div>
              </div>
           </div>
 </div>
</asp:Content>

