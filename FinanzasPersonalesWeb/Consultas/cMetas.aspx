<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cMetas.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cMetas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
	        font-family:"Helvetica",Arial;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class ="container">
            <h2>Consultas de Metas</h2>
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
            </div>
              <center>
                 <div class="table table-responsive col-md-12 col-xs-12 col-lg-12">
                    <asp:GridView ID="MetasGridView" runat="server" CssClass="table table-bordered table-hover table-striped" AutoGenerateColumns="False">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="MetaId" DataNavigateUrlFormatString="~/Registros/rMetas.aspx?Id={0}" Text="Editar" />
                            <asp:BoundField DataField="MetaId" HeaderText="MetaId" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                            <asp:BoundField DataField="UsuarioId" HeaderText="UsuarioId" />
                        </Columns>
                    </asp:GridView>
                </div>
             </center>
         <asp:Button ID="ImprimirButton" runat="server" CssClass="btn btn-primary" Text="Imprimir" PostBackUrl="~/ReportViewers/ListadoMetas.aspx" />
        </div>
</asp:Content>
