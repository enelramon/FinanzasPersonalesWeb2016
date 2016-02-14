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
        .auto-style4 {
            margin-left: -15px;
            margin-right: -15px;
            height: 384px;
        }
        .auto-style5 {
            margin-bottom: 15px;
            height: 418px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
        <div class="auto-style4">
            <div "auto-style4">
           
                    <asp:Label ID="Label1" runat="server" Text="Tipo de Ingresos Id"></asp:Label>
                    
                    <asp:TextBox ID="TipoIngresoTextBox" CssClass="form-control" runat="server" placeholder ="Escribe un id" Width="359px"></asp:TextBox>

            <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-primary" Text="Buscar" OnClick="BuscarButton_Click" />

                    
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label>
                    <asp:TextBox ID="DescripcionTextBox" CssClass="form-control" runat="server" placeholder ="Escribe una descripcion" Width="465px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>
                    <asp:RadioButtonList ID="EstadoRadioButtonList" runat="server" RepeatDirection="Horizontal" Width="365px">
                        <asp:ListItem Selected="True">Activo</asp:ListItem>
                        <asp:ListItem>No Activo</asp:ListItem>
                    </asp:RadioButtonList>
                    
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Usuarios"></asp:Label>
                    <asp:DropDownList ID="UsuarioDropDownList" CssClass="form-control" runat="server" Width="459px">
                    </asp:DropDownList>
                    
                    <br />
                    
                  
            </div>
                    <div class="btn btn">
                            <asp:Button ID="GuardarButton" CssClass="btn btn-success" runat="server" Text="Guardar" Width="101px" OnClick="GuardarButton_Click" />
                    
                            <asp:Button ID="ModificarButton" CssClass="btn btn-default" runat="server" Text="Modificar" Width="98px" OnClick="ModificarButton_Click" />
                    
                            <asp:Button ID="EliminarButton" CssClass="btn btn-danger" runat="server" Text="Eliminar" Width="102px" OnClick="EliminarButton_Click" />      
                    </div>
                    
                    <br />
                    <br />
                    <br />
                    <br />
                      

            </div>
    </div>
</asp:Content>
