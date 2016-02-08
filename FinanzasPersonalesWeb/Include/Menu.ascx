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


<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Finanzas Personales</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="default.aspx"><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <% if (Request.IsAuthenticated)
                { %>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-pencil"></span>Registros <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-header">Configuracion</li>
                    <li><a href="Registros/rCuentas.aspx">Agregar Nueva Cuenta</a></li>
                    <li><a href="Registros/rMetas.aspx">Agregar Nueva Meta</a></li>
                    <li><a href="Registros/rMiembros.aspx">Agregar Nuevo Miembro</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">Economia</li>
                    <li><a href="Registros/rIngresos.aspx">Registrar Nuevo Ingreso</a></li>
                    <li><a href="Registros/rTipoIngresos.aspx">Agregar Tipo de Ingreso</a></li>
                    <li><a href="Registros/rEgresos.aspx">Registrar Nuevo Egreso</a></li>
                    <li><a href="Registros/rTipoEgresos.aspx">Agregar Tipo de Egreso</a></li>
                    <li><a href="Registros/rPresupuestos.aspx">Agregar Presupuesto</a></li>
                    <li><a href="Registros/rTransferencias.aspx">Registrar Transferencia</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-book"></span> Consultas <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-header">Consultas</li>
                    <li><a href="Consultas/cUsuarios.aspx">Consultar Usuarios</a></li>
                    <li><a href="Consultas/cCuentas.aspx">Consultar Cuentas</a></li>
                    <li><a href="Consultas/cMetas.aspx">Consultar Metas</a></li>
                    <li><a href="Consultas/cMiembros.aspx">Consultar Miembros</a></li>
                    <li><a href="Consultas/cIngresos.aspx">Consultar Ingresos</a></li>
                    <li><a href="Consultas/cTipoIngresos.aspx">Consultar Tipos de Ingresos</a></li>
                    <li><a href="Consultas/cEgresos.aspx">Consultar Egresos</a></li>
                    <li><a href="Consultas/cTipoEgresos.aspx">Consultar Tipos de Egresos</a></li>
                    <li><a href="Consultas/cPresupuestos.aspx">Consultar Presupuesto</a></li>
                    <li><a href="Consultas/cTransferencias.aspx">Consultar Transferencias</a></li>
                </ul>
            </li>

            <% } %>
            <li><a href="default.aspx">No se que hacer aqui...</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">

            <asp:LoginView runat="server" ID="LoginView2">
                <AnonymousTemplate>
                    <li style="margin-top: 4.5%">Bienvenido Usuario,  </li>
                    <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                    <li><a href="Registros/rUsuarios.aspx"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <li style="margin-top: 6%;">Bienvenido
                    <asp:LoginName runat="server" ID="LoginName1" />
                        ,</li>
                    <li role="button">
                        <asp:LoginStatus runat="server" ID="LoginStatus1" />
                    </li>
                </LoggedInTemplate>
            </asp:LoginView>
        </ul>
    </div>
</div>

<!--Estoy trabajando como hacer que el login sea un modal-->
<div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Acceder</h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-info" data-dismiss="modal" aria-hidden="true">Close</button>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
