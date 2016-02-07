<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cTipoEgreso.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaTipoEgreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
                 <br>
                <div class="form-group">
                       <div class="col-md-2">
                         <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Consultar por:"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:DropDownList ID="ConsultaDropDownList" runat="server" CssClass="form-control" >
                            <asp:ListItem>Tipo Egreso Id</asp:ListItem>
                            <asp:ListItem>Descripcion</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-6">
                             <asp:TextBox ID="CampoTextBox" runat="server" placeholder="Ingrese el campo ha consultar" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarButton_Click"  CssClass="btn btn-sm btn-info" Text="Buscar" />
                         </div>
                 </div>
                <asp:GridView ID="DatoGridView" runat="server" style="margin-top: 7px; margin-bottom: 0px" Width="580px">
                </asp:GridView>
           </center> 
</asp:Content>
