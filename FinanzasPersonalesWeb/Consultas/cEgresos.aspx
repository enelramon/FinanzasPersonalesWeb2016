<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cEgresos.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaEgresoWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 139px;">
        <tr>
            <td>Consultar por:
            <div class="container">
               <div class ="row">
                <div class="col-md-2">
                    <asp:DropDownList ID="ElementosDropDownList" runat="server" CssClass ="form-control" Height="35px" Width="150px">
                        <asp:ListItem>EgresoId</asp:ListItem>
                        <asp:ListItem>Fecha</asp:ListItem>
                        <asp:ListItem>CuentaId</asp:ListItem>
                        <asp:ListItem>TipoEgresoId</asp:ListItem>
                        <asp:ListItem>MiembroId</asp:ListItem>
                    </asp:DropDownList>
                </div>
                
                    <div class ="col-md-4">
                        <asp:TextBox ID="DatosTextBox"  runat="server" CssClass ="form-control"  Width="400px" Height="35px"></asp:TextBox>
                    </div>
                    <div class ="col-md-4">
                        <asp:Button ID="ConsultaBuscarButton" runat="server" Class ="btn btn-primary" OnClick="ConsultaBuscarButton_Click" Text="Buscar" Width="80px" Height="35px" />
                    </div>
                </div>
            </div>
            </td>
        </tr>
        <tr>
            <td>
            <div class="container">
                <div class ="row">
                    <div class ="col-md-12">
                        <asp:GridView ID="ElementosGridView" runat="server" CssClass="form-inline" Width="800px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                        <asp:LinkButton ID="ImprimirLinkButton" runat="server" Text="Imprimir" CssClass="btn btn-success btn-block" PostBackUrl="~/ReportViewers/ListadoEgresos.aspx" />
                    </div>
                </div>
            </div>
            </td>
            
        </tr>
    </table>
</asp:Content>
