<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoIngreso.aspx.cs" Inherits="FinanzasPersonalesWeb.TipoIngreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <div class="row">
            <div class="col-xs-2">
           
                    <asp:Label ID="Label4" runat="server" Text="Tipo de Ingresos Id"></asp:Label>
                
            </div>
            <div class="col-xs-8">
            
                    <asp:TextBox ID="TipoIngresoTextBox" CssClass="form-control" runat="server" placeholder ="Escribe un id"></asp:TextBox>
            </div>
            <div class="col-xs-2">
                    <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-primary" Text="Buscar" OnClick="BuscarButton_Click" />
            </div>
            <div class="col-xs-2">
                
                    <asp:Label ID="Label1" runat="server" Text="Descripcion"></asp:Label>
            </div>
            <div class="form-group">
                
                    <asp:TextBox ID="DescripcionTextBox" CssClass="form-control" runat="server" placeholder ="Escribe una descripcion"></asp:TextBox>
               
            </div>
            
            <div class="col-xs-4">
                
                    <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>
                
            </div>
            <div class="col-xs-8">
                
                    <asp:RadioButtonList ID="EstadoRadioButtonList" runat="server" RepeatDirection="Horizontal" Width="365px">
                        <asp:ListItem Selected="True">Activo</asp:ListItem>
                        <asp:ListItem>No Activo</asp:ListItem>
                    </asp:RadioButtonList>
                      
            </div>
            <div class="col-xs-2">
               
                    <asp:Label ID="Label2" runat="server" Text="Usuarios"></asp:Label>
                        
            </div>
            <div class="form-group">
              
                    <asp:DropDownList ID="UsuarioDropDownList" CssClass="form-control" runat="server">
                    </asp:DropDownList>
                        
            </div>

            <div class="btn-group">
                    <asp:Button ID="GuardarButton" CssClass="btn btn-success" runat="server" Text="Guardar" Width="101px" OnClick="GuardarButton_Click" />
                    
                    <asp:Button ID="ModificarButton" CssClass="btn btn-default" runat="server" Text="Modificar" Width="98px" OnClick="ModificarButton_Click" />
                    
                    <asp:Button ID="EliminarButton" CssClass="btn btn-danger" runat="server" Text="Eliminar" Width="102px" OnClick="EliminarButton_Click" />      
            </div>
     </div>
</div>
</asp:Content>
