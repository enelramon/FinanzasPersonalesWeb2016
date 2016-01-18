<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="FinanzasPersonalesWeb.Include.Menu" %>

<style type="text/css">
    .auto-style1 {
        height: 43px;
    }
    .auto-style2 {
        height: 43px;
        width: 102px;
    }
    .auto-style3 {
        width: 767px;
    }
</style>

<table width="100%">
    <tr>
        <td align="center" class="auto-style2">
            <asp:HyperLink ID="hyper1" runat="server" Text="Home" NavigateUrl="~/default.aspx" />
             <td align="center" class ="auto-style3">
                <asp:LoginView runat="server" ID ="MenuVew1">
                    <AnonymousTemplate>
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                    <asp:HyperLink ID = "HyperLink1" runat = "server" Text = "Consulta Usuario" NavigateUrl = "~/cUsuarios.aspx" />
                    </LoggedInTemplate>
                </asp:LoginView>
        </td>
        <td align="right" class="auto-style1">
            <asp:LoginView runat="server" ID="LoginView1">
                <AnonymousTemplate>
                    Bienvenido Guest,
                    <asp:LoginStatus runat="server" ID="LoginStatus1" />
             <asp:HyperLink ID="HyperLink1" runat="server" Text="Registrar" NavigateUrl="~/rUsuarios.aspx" />
                </AnonymousTemplate>
               <LoggedInTemplate>
                    Bienvenido
                    <asp:LoginName runat="server" ID="LoginName1" />
                    ,
                    <asp:LoginStatus runat ="server" ID="LoginStatus1" />
                </LoggedInTemplate>
            </asp:LoginView>
            
        </td>
    </tr>
</table>