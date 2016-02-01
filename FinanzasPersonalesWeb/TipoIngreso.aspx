<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoIngreso.aspx.cs" Inherits="FinanzasPersonalesWeb.TipoIngreso" %>
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
    <div class="row">
        <div class="form-group">
            <div class="col-xs-3 col-sm-3 col-lg-2 col-md-3">
           
                    <h6><asp:Label ID="Label1" runat="server" Text="Tipo de Ingresos Id"></asp:Label></h6>
                    <br />
                    <h6><asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label></h6>
                    <br />
                    <h6><asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label></h6>
                    <br />
                    <h6><asp:Label ID="Label4" runat="server" Text="Usuarios"></asp:Label></h6>
                    <br />
                    
                  
            </div>

            <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-primary" Text="Buscar" OnClick="BuscarButton_Click" />

            <div class="col-xs-9 col-sm-9 col-lg-5 col-md-6">
                    
                    <asp:TextBox ID="TipoIngresoTextBox" CssClass="form-control" runat="server" placeholder ="Escribe un id"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="DescripcionTextBox" CssClass="form-control" runat="server" placeholder ="Escribe una descripcion"></asp:TextBox>
                    <br />
                    <asp:RadioButtonList ID="EstadoRadioButtonList" runat="server" RepeatDirection="Horizontal" Width="365px">
                        <asp:ListItem Selected="True">Activo</asp:ListItem>
                        <asp:ListItem>No Activo</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:DropDownList ID="UsuarioDropDownList" CssClass="form-control" runat="server">
                    </asp:DropDownList>
                    <br />
                      

                    <div class="col-lg-12 col-centered">
                            <asp:Button ID="GuardarButton" CssClass="btn btn-success" runat="server" Text="Guardar" Width="101px" OnClick="GuardarButton_Click" />
                    
                            <asp:Button ID="ModificarButton" CssClass="btn btn-default" runat="server" Text="Modificar" Width="98px" OnClick="ModificarButton_Click" />
                    
                            <asp:Button ID="EliminarButton" CssClass="btn btn-danger" runat="server" Text="Eliminar" Width="102px" OnClick="EliminarButton_Click" />      
                    </div>
            </div>
        </div>
    </div>
</asp:Content>
