<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cCuentas.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cCuentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
        $(function () {
            $.ajax({
                type: "POST",
                url: "cCuentas.aspx/GetCuentas",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                },
                error: function (response) {
                    alert(response.d);
                }
            });
        });

        function OnSuccess(response) {
            var table = $("#dvCustomers table").eq(0).clone(true);
            var cuentas = response.d;
            $("#dvCustomers table").eq(0).remove();
            $(cuentas).each(function () {
                $(".id", table).html(this.CuentaId);
                $(".descripcion", table).html(this.Descripcion);
                $(".balance", table).html(this.Balance);
                $(".porciento", table).html(this.Porciento);
                $("#dvCustomers").append(table).append("<br />");
                table = $("#dvCustomers table").eq(0).clone(true);
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 139px;">

        <div class="container">
            <div class="row">
                <div class="col-md-1">
                    <span class="label label-primary">Buscar Por:</span>
                </div>
                <div class="col-md-2">
                    <asp:DropDownList ID="BuscarPorDropdown" runat="server" CssClass="form-control" Height="35px" Width="150px">
                        <asp:ListItem>CuentaId</asp:ListItem>
                        <asp:ListItem>UsuarioId</asp:ListItem>
                        <asp:ListItem>Descripcion</asp:ListItem>
                        <asp:ListItem>Balance</asp:ListItem>
                        <asp:ListItem>Porciento</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="col-md-4">
                    <asp:TextBox ID="FiltroTextBox" runat="server" CssClass="form-control" Width="400px" Height="35px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Button ID="BuscarButton" runat="server" Class="btn btn-primary" OnClick="BuscarButton_Click" Text="Buscar" Width="80px" Height="35px" />
                </div>
            </div>
        </div>
        </td>
        </tr>
        <tr>
            <td>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:GridView ID="CuentasGridView" runat="server"
                                CssClass="table table-condensed table-striped table-bordered table-responsive"
                                Width="100%"
                                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                                <Columns>
                                    <asp:HyperLinkField
                                        DataNavigateUrlFields="CuentaId"
                                        DataNavigateUrlFormatString="~/Registros/rCuentas.aspx?Id={0}"
                                        Text="Editar" />

                                </Columns>
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
                            <td></td>
                        </div>
                    </div>

                </div>
            </td>


        </tr>
    </table>
    <asp:HyperLink ID="MiembrosHyperLink" runat="server" NavigateUrl="~/ReportViewers/ListadoMiembros.aspx">Imprimir  Rpt</asp:HyperLink>


    <hr />
    <div id="dvCustomers">
        <asp:Repeater ID="rptCustomers" runat="server">
            <ItemTemplate>
                <table class="tblCustomer" cellpadding="2" cellspacing="0" border="1">
                    <tr>
                        <th>
                            <b><u><span class="id">
                                <%# Eval("CuentaId") %></span></u></b>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <b>Descripcion: </b><span class="descripcion">
                                <%# Eval("Descripcion") %></span><br />
                            <b>Balance: </b><span class="balance">
                                <%# Eval("Balance") %></span><br />
                            <b>Pcto: </b><span class="porciento" >
                                <%# Eval("Porciento")%></span><br />
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
