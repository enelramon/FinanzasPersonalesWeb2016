﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="FinanzasPersonalesWeb.Include.Menu" %>
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


    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/Default.aspx">Finanzas Personales</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="/Default.aspx">Home</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Registros <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Configuracion</li>
                            <li>
                                <a href="/Registros/rCuentas.aspx">Agregar Nueva Cuenta</a>
                            </li>
                            <li>
                                <a href="/Registros/rMetas.aspx">Agregar Nueva Meta</a>
                            </li>
                            <li>
                                <a href="/Registros/rMiembros.aspx">Agregar Nuevo Miembro</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Economia</li>
                            <li>
                                <a href="/Registros/rIngresos.aspx">Registrar Nuevo Ingreso</a>
                            </li>
                            <li>
                                <a href="/Registros/rTipoIngresos.aspx">Agregar Tipo de Ingreso</a>
                            </li>
                            <li>
                                <a href="/Registros/rEgresos.aspx">Registrar Nuevo Egreso</a>
                            </li>
                            <li>
                                <a href="/Registros/rTipoEgresos.aspx">Agregar Tipo de Egreso</a>
                            </li>
                            <li>
                                <a href="/Registros/rPresupuestos.aspx">Agregar Presupuesto</a>
                            </li>
                            <li>
                                <a href="/Registros/rTransferencias.aspx">Registrar Transferencia</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Consultas <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Consultas</li>
                            <li>
                                <a href="/Consultas/cUsuarios.aspx">Consultar Usuarios</a>
                            </li>
                            <li>
                                <a href="/Consultas/cCuentas.aspx">Consultar Cuentas</a>
                            </li>
                            <li>
                                <a href="/Consultas/cMetas.aspx">Consultar Metas</a>
                            </li>
                            <li>
                                <a href="/Consultas/cMiembros.aspx">Consultar Miembros</a>
                            </li>
                            <li>
                                <a href="/Consultas/cIngresos.aspx">Consultar Ingresos</a>
                            </li>
                            <li>
                                <a href="/Consultas/cTipoIngresos.aspx">Consultar Tipos de Ingresos</a>
                            </li>
                            <li>
                                <a href="/Consultas/cEgresos.aspx">Consultar Egresos</a>
                            </li>
                            <li>
                                <a href="/Consultas/cTipoEgresos.aspx">Consultar Tipos de Egresos</a>
                            </li>
                            <li>
                                <a href="/Consultas/cPresupuestos.aspx">Consultar Presupuesto</a>
                            </li>
                            <li>
                                <a href="/Consultas/cTransferencias.aspx">Consultar Transferencias</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-user"></i>
                            <asp:Label ID="NombreLabel" runat="server" Text="NombreUsuario"></asp:Label>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#"><i class="fa fa-fw fa-user"></i>Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-envelope"></i>Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-gear"></i>Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-power-off"></i>Log Out</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
