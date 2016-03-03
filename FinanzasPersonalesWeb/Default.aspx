<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinanzasPersonalesWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Esta es la pagina Default, FinanzasPersonaslWeb 1-2016 Universidad Catolica Nordestana (UCNE)"></asp:Label>



<div class="row">
    <div class="col-sm-6">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">Cuentas</h3>
            </div>
            <asp:Repeater ID="yourRepeater" runat="server">
                <ItemTemplate>
                    <div class="panel-body">
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion")%>'></asp:Label>

                    </div>
                </ItemTemplate>
            </asp:Repeater>            
        </div>
    </div>

    <div class="col-sm-6">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">Ingreso</h3>
            </div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="panel-body">
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion")%>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:Repeater>            
        </div>
    </div>

    <div class="col-sm-6">
        <div class="panel panel-danger">
            <div class="panel-heading">
                <h3 class="panel-title">Egreso</h3>
            </div>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="panel-body">
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion")%>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:Repeater>            
        </div>
    </div>

    <div class="col-sm-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Balance General</h3>
            </div>            
            <div class="panel-body">
                <span runat="server" class="badge pull-right">1200</span>
            </div>         
        </div>
    </div>
</div>
    
</asp:Content>
