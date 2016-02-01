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
     <div class ="container">
            <br />
            <h2>Consultas de Metas</h2>
            <br /><br />
             <div class="row">
                 <div class="col-xs-3 col-md-3">
                     <asp:DropDownList ID="ConsultaDropDownList" CssClass="form-control " runat="server">
                          <asp:ListItem>MetaId</asp:ListItem>
                          <asp:ListItem>Descripcion</asp:ListItem>
                     </asp:DropDownList>
                 </div>
              <div class="col-xs-6 col-md-6">
                <asp:TextBox runat="server" ID="ConsultaTextBox" CssClass="form-control " placeholder="Id"/>
              </div>
              <div class="col-xs-3 col-md-3">
                <asp:Button Text="Buscar" runat="server" ID="BuscarButton" CssClass="btn btn-primary" OnClick="BuscarButton_Click1"/>
              </div>
            </div> <br />
            <center>
                <asp:GridView ID="MetasGridView" runat="server" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="600px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:BoundField FooterText="MetaId" />
                        <asp:BoundField FooterText="Descripcion" />
                        <asp:BoundField FooterText="UsuarioI" />
<asp:BoundField FooterText="Descripcion"></asp:BoundField>
<asp:BoundField FooterText="Balance"></asp:BoundField>
                    </Columns>
                    <Columns>
                        <asp:BoundField FooterText="Descripcion" />
                    </Columns>
                    <Columns>
                        <asp:BoundField FooterText="Balance" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </center>
        </div>
</asp:Content>
