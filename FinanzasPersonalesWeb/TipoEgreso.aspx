<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoEgreso.aspx.cs" Inherits="FinanzasPersonalesWeb.TipoEgreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
 <div class ="container">
             <div class="form-group">
                <div class="col-md-2">
                    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="TipoEgresoId"></asp:Label>
               </div>
                <div class="col-md-8">
                    <asp:TextBox ID="TipoEgresoIdTextBox" runat="server"  placeholder="Ingrese el TipoEgresoId" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="col-md-2">
                    <asp:Button ID="BuscarButton" runat="server"  Height="26px" CssClass="btn btn-sm btn-info" Text="Buscar" OnClick="BuscarButton_Click" />
                 </div>
             </div>
            <br>
            <div class="form-group">
                <div class="col-md-2">
                    <asp:Label ID="Label2" runat="server"  Text="Descripcion"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="DescripcionTextBox" runat="server" CssClass="form-control" placeholder="Ingrese la descripcion"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:Label ID="MensajeLabel" runat="server"></asp:Label>
                </div>
            </div>
            <br>
           <div class="form-group">
               <div class="col-md-2">
                    <asp:Label ID="Label4" runat="server" CssClass="control-label " Text="Estado"></asp:Label>
               </div>
               <div class="col-md-10">
                    <asp:RadioButtonList ID="EstadoRadioButtonList" runat="server" Height="16px" Width="107px">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>No Activo</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
           </div>
          <br><br>
           <div class="form-group">
               <div class="col-md-2">
                <asp:Label ID="Label3" runat="server" Text="Usuario"></asp:Label>
               </div>
               <div class="col-md-8">
                    <asp:DropDownList ID="UsuarioDropDownList" runat="server" CssClass="form-control">
                    </asp:DropDownList>
               </div>
          </div>
                <div class ="container">
                    <div class ="row">
                             <div class ="col-md-3">
                                <asp:Button ID="NuevoButton" runat="server" CssClass="btn btn-sm btn-info" Text="Nuevo" OnClick="NuevoButton_Click" Width="60px" />
                                <asp:Button ID="GuardarButton" runat="server" CssClass="btn btn-sm  btn-info" Text="Guardar" OnClick="GuardarButton_Click" Width="60px" />
                                <asp:Button ID="ElimanarButton" runat="server" CssClass="btn btn-sm btn-info" Text="Eliminar" OnClick="ElimanarButton_Click" Width="60px" />
            </div>
                      </div>
                              </div>
  </div>
</asp:Content>

