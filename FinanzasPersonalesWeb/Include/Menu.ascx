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
            <li class="active"><a href="default.aspx">Home</a></li>
            <% if (Request.IsAuthenticated) { %>
            <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Registros <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Agregar Nueva Cuenta</a></li>
            <li><a href="#">Agregar Nueva Meta</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Registrar Nuevo Ingreso</a></li>
            <li><a href="#">Registrar Nuevo Egreso</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Consultas <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
            <li><a href="default.aspx">Home</a></li>
            <% } %>
            </ul>
       <ul class="nav navbar-nav navbar-right">
            
            <asp:LoginView runat="server" ID="LoginView2">
                <AnonymousTemplate>
                    <li style="margin-top: 4.5%"> Bienvenido Usuario,  </li>
                    <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    <li><a href="rUsuarios.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                 </AnonymousTemplate>
                 <LoggedInTemplate>
                    <li style="margin-top: 6%;">Bienvenido
                    <asp:LoginName runat="server" ID="LoginName1" />
                    ,</li>
                    <li role="button"><asp:LoginStatus runat="server" ID="LoginStatus1" />
                        </li>
                 </LoggedInTemplate>
                </asp:LoginView>
              </ul>
    </div>
</div>


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