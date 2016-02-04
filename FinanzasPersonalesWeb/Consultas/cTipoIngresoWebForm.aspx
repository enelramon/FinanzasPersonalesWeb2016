<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cTipoIngresoWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.Consultas.cTipoIngresoWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
        .col-centered
        {
          display: block;
          margin-left: auto;
          margin-right: auto;
          text-align: center;
        }
    </style>
</asp:Content>
    

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">

        <div class="col-xs-1 col-sm-1 col-lg-1 col-md-1">
            <asp:Label ID="Label1" CssClass="control-label" runat="server" Text=" Consultar por"></asp:Label>
        </div>

        <div class="col-xs-2 col-sm-2 col-lg-2 col-md-2">
             <asp:DropDownList ID="TipoIngresoDropDownList"  CssClass="form-control" runat="server" Height="38px">
                 <asp:ListItem Value="TipoIngresoId">TipoIngresoId</asp:ListItem>
                 <asp:ListItem Value="Descripcion">Descripcion</asp:ListItem>
                 <asp:ListItem Value="EsActivo">Activo</asp:ListItem>
                 <asp:ListItem Value="UsuarioId">UsuarioId</asp:ListItem>
             </asp:DropDownList>
        </div>

        <div class="col-xs-3 col-sm-5 col-lg-7 col-md-7">
            <asp:TextBox ID="CodigoTextBox" runat="server" CssClass="form-control" placeholder="Escribe un caracter valido"></asp:TextBox>
        </div>

        <div class="col-xs-2 col-sm-2 col-lg-2 col-md-2">
            <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-primary" OnClick="BuscarButton_Click" Text="Buscar"/>
            <br />
        </div>

        <br />
        <br />

        <div class=" col-centered">
            <asp:GridView ID="ConsultaGridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" Width="755px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Justify" VerticalAlign="Top" Height="30px" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" Font-Underline="True" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
    </div>
    
</asp:Content>
