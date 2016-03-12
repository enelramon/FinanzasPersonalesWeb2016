<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cTransferencias.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cTransferencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">
                <div class="form-group">
                    <asp:DropDownList ID="DatosDropDownList" class="col-xs-3 control-label input-sm" runat="server">
                        <asp:ListItem>TransferenciaId</asp:ListItem>
                    </asp:DropDownList>
                    <div class="col-xs-3">
                        <asp:TextBox ID="DatosTextBox" runat="server" placeholder="Buscar por" Class="form-control input-sm"></asp:TextBox>
                    </div>
                    <asp:Button ID="BuscarButton" Class="btn btn-info" runat="server" Text="Buscar" />

                </div>
                <asp:GridView ID="DatosGridView" runat="server" Width="645px" BorderColor="green" BorderWidth="3px" BackColor="#16a085" Height="234px">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="TransferenciaId" DataNavigateUrlFormatString="/Registros/rTransferencia.aspx?Id={0}" Text="Editar" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
