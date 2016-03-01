<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cIngresos.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cIngresos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="panel panel-success">
        <div class="panel-heading">Consultar de Ingresos</div>
        <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">
            <div class="form-group">

                    <%--Consultar--%>
                    <div class="form-group">
                        <asp:Label For="CodigoTextBox" ID="Label1" class="col-md-3 control-label input-sm" runat="server" Text=" Consultar por"></asp:Label>
                        <div class="col-lg-2 col-md-2">
                             <asp:DropDownList ID="IngresoDropDownList" CssClass="form-control" runat="server" Height="38px">
                                 <asp:ListItem Value="IngresoId">IngresoId</asp:ListItem>
                                 <asp:ListItem Value="Fecha">Fecha</asp:ListItem>
                                 <asp:ListItem Value="CuentaId">CuentaId</asp:ListItem>
                                 <asp:ListItem Value="MiembroId">MiembroId</asp:ListItem>
                                 <asp:ListItem Value="TipoIngresoId">TipoIngresoId</asp:ListItem>
                                 <asp:ListItem Value="Observacion">Observacion</asp:ListItem>
                             </asp:DropDownList>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <asp:TextBox ID="CodigoTextBox" runat="server" CssClass="form-control" placeholder="Escribe un caracter valido"></asp:TextBox>
                        </div>
                        <div class="col-xs-1 col-sm-1 col-lg-2 col-md-2">
                            <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-primary" OnClick="BuscarButton_Click" Text="Buscar"/>
                        </div>
                        <div class="col-md-1">
                        </div>
                    </div>
                    <%--Grid--%>
                    <div class="col-lg-12">
                        <asp:GridView ID="ConsultaGridView" runat="server" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" BackColor="White">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />                          
                        </asp:GridView>
                    </div>
            </div>
        </div>
        </div>
        </div>    
            
</asp:Content>
