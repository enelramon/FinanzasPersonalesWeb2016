<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinanzasPersonalesWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="row">
    <asp:Repeater ID="yourRepeater" runat="server">
        <ItemTemplate>
            <div class="col-sm-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <asp:Label ID="DescripcionLabel" CssClass="panel-title" runat="server" Text='<%# Eval("Descripcion")%>'></asp:Label>
                    </div>            
                    <div class="panel-body">
                        <asp:Label ID="CuentaIdLabel" runat="server" Text='<%# Eval("CuentaId")%>'></asp:Label>&nbsp&nbsp
                        <asp:Label ID="EgresoLabel" runat="server" Text='<%# Eval("Egresos")%>'></asp:Label>&nbsp&nbsp
                        <asp:Label ID="BalanceLabel" runat="server" Text='<%# Eval("Balance")%>'></asp:Label>&nbsp&nbsp
                        <asp:Label ID="IngresoLabel" runat="server" Text='<%# Eval("Ingresos")%>'></asp:Label>
                    </div>         
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater> 

    <div class="col-sm-6">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">Balance General</h3>
            </div>
                <div class="panel-body">
                    <asp:Label ID="CuentaIdLabel" runat="server" Text='<%# Eval("Balance")%>'></asp:Label>&nbsp&nbsp
                </div>          
        </div>
    </div>
</div>
    
</asp:Content>
