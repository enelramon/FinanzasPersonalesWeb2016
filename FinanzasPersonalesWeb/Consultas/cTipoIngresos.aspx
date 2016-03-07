<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cTipoIngresos.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cTipoIngresos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
    

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="panel panel-success">
        <div class="panel-heading">Consultar de Tipo Ingreso</div>
        <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">
            <div class="form-group">
                    
                    <%--Consultar--%>
                    <div class="form-group">
                        <asp:Label ID="Label1" class="col-md-3 control-label input-sm" runat="server" Text=" Consultar por"></asp:Label>
                        <div class="col-lg-2 col-md-2">
                             <asp:DropDownList ID="TipoIngresoDropDownList" CssClass="form-control" runat="server" Height="38px">
                                 <asp:ListItem Value="TipoIngresoId">TipoIngresoId</asp:ListItem>
                                 <asp:ListItem Value="Descripcion">Descripcion</asp:ListItem>
                                 <asp:ListItem Value="EsActivo">Activo</asp:ListItem>
                                 <asp:ListItem Value="UsuarioId">UsuarioId</asp:ListItem>
                             </asp:DropDownList>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <asp:TextBox ID="CodigoTextBox" runat="server" CssClass="form-control" placeholder="Escribe un caracter valido"></asp:TextBox>
                        </div>
                        <div class="col-xs-1 col-sm-1 col-lg-2 col-md-2">
                            <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-primary" OnClick="BuscarButton_Click" Text="Buscar"/>
                            <asp:Button ID="ImprimirButton" runat="server" CssClass="btn btn-primary" Text="Imprimir" PostBackUrl="~/ReportViewers/ListadoTipoIngreso.aspx" />
                        </div>
                    </div>
                    <%--Grid--%>
                    <div class="col-lg-12">
                        <asp:GridView ID="ConsultaGridView" runat="server" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" BackColor="White">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="TipoIngresoId" DataNavigateUrlFormatString="/Registros/rTipoIngreso.aspx?Id={0}" Text="Editar" />
                            </Columns>  
                        </asp:GridView>
                    </div>
            </div>
        </div>
        </div>
        </div>
        
    
</asp:Content>
