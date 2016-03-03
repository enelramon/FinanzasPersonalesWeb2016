<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cMiembros.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.ConsultaMiembros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 139px;">
            
            <div class="container">
               <div class ="row">
                <div class="col-md-1">
                    <span class="label label-primary">Buscar Por:</span>
                    </div>
                    <div class="col-md-2">
                    <asp:DropDownList ID="BuscarPorDropdown" runat="server" CssClass ="form-control" Height="35px" Width="150px">
                        <asp:ListItem>MiembroId</asp:ListItem>
                        <asp:ListItem>Nombre</asp:ListItem>
                        <asp:ListItem>Apellidos</asp:ListItem>
                        <asp:ListItem>Parentesco</asp:ListItem>
                        <asp:ListItem>esActivo</asp:ListItem>
                         <asp:ListItem>UsuarioId</asp:ListItem>
                    </asp:DropDownList>
                </div>
                
                    <div class ="col-md-4">
                        <asp:TextBox ID="TbFiltro"  runat="server" CssClass ="form-control"  Width="400px" Height="35px"></asp:TextBox>
                    </div>
                    <div class ="col-md-4">
                        <asp:Button ID="BtnBuscar" runat="server" Class ="btn btn-primary" OnClick="BtnBuscar_Click" Text="Buscar" Width="80px" Height="35px" />
                    </div>
                </div>
            </div>
            </td>
        </tr>
        <tr>
            <br />
            <td>
            <div class="container">
                <div class ="row">
                    <div class ="col-md-12">
                        <asp:GridView ID="MiembrosDataGrid" runat="server" CssClass="form-inline" Width="800px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
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
                                    <td>
            </td>
                    </div>
                </div>

            </div>
            </td>

            
        </tr>
    </table>
                <asp:HyperLink ID="MiembrosHyperLink" runat="server" NavigateUrl="~/ReportViewers/ListadoMiembros.aspx">Imprimir  Rpt</asp:HyperLink>

</asp:Content>

