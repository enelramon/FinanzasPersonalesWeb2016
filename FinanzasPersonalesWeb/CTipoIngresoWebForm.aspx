<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CTipoIngresoWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.CTipoIngresoWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            display: block;
            padding: 8px 16px;
            font-size: 15px;
            line-height: 1.42857143;
            color: #2b3e50;
            background-color: #ffffff;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
        </style>
</asp:Content>
    

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Label1" CssClass="control-label" runat="server" Text=" Consultar por"></asp:Label>
        </div>

        <div class="col-xs-2 col-md-2">
             <asp:DropDownList ID="TipoIngresoDropDownList"  CssClass="form-control" runat="server" Height="38px">
                 <asp:ListItem Value="TipoIngresoId">TipoIngresoId</asp:ListItem>
                 <asp:ListItem Value="Descripcion">Descripcion</asp:ListItem>
                 <asp:ListItem Value="EsActivo">Activo</asp:ListItem>
                 <asp:ListItem Value="UsuarioId">UsuarioId</asp:ListItem>
             </asp:DropDownList>
        </div>

        <div class="col-xs-6 col-md-6">
            <asp:TextBox ID="CodigoTextBox" runat="server" CssClass="form-control" placeholder="Escribe un caracter valido"></asp:TextBox>
        </div>

        <div class="col-xs-2 col-md-2">
            <asp:Button ID="BuscarButton" runat="server" CssClass="form-control" OnClick="BuscarButton_Click" Text="Buscar"/>
        </div>
        <div class="col-xs-12 col-md-12">
            <asp:GridView ID="ConsultaGridView" runat="server" Height="201px" Width="598px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="Horizontal">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
