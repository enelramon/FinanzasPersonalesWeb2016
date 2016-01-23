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
                    <asp:HyperLink ID = "HyperLink2" runat = "server" Text = "RegistrarEgresos" NavigateUrl = "~/EgresosWebForm.aspx" />
                    <asp:HyperLink ID = "HyperLink3" runat = "server" Text = "Registrar Metas" NavigateUrl = "~/MetasWebForm.aspx" />
                    <asp:HyperLink ID = "HyperLink4" runat = "server" Text = "Registrar Miembros" NavigateUrl = "~/MiembrosWebForm.aspx" />
                    <asp:HyperLink ID = "HyperLink5" runat = "server" Text = "Registrar Tipo de Ingreso" NavigateUrl = "~/TipoIngreso.aspx" />
                    <asp:HyperLink ID = "HyperLink6" runat = "server" Text = "Registrar Transferencias" NavigateUrl = "~/Transferencia.aspx" />
                    <asp:HyperLink ID = "HyperLink7" runat = "server" Text = "Registrar Tipos Usuarios" NavigateUrl = "~/rTiposUsuarios.aspx" />
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