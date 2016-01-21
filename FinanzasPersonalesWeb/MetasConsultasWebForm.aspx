<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MetasConsultasWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.MetasConsultasWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <style>
        body{
	        font-family:"Helvetica",Arial;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
            <br />
            <h2>Consultas de Metas</h2>
            <br /><br />
             <div class="row">
              <div class="col-xs-6">
                <asp:TextBox runat="server" ID="ConsultaTextBox" CssClass="form-control " placeholder="Id" Height="33px" Width="496px"/>
              </div>
              <div class="col-xs-3">
                <asp:Button Text="Buscar" runat="server" ID="BuscarButton" CssClass="btn btn-primary" OnClick="BuscarButton_Click1"/>
              </div>
            </div> <br />
            <asp:GridView ID="MetasGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="485px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField FooterText="MetaId" />
                    <asp:BoundField FooterText="Descripcion" />
                    <asp:BoundField FooterText="UsuarioI" />
                </Columns>
                <Columns>
                    <asp:BoundField FooterText="Descripcion" />
                </Columns>
                <Columns>
                    <asp:BoundField FooterText="Balance" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </center>
</asp:Content>
