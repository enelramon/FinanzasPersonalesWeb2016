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
        </ul>
       <ul class="nav navbar-nav navbar-right">
            
            <asp:LoginView runat="server" ID="LoginView2">
                <AnonymousTemplate>
                    <li style="margin-top: 4.5%"> Bienvenido Usuario, </li>
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
           <ul>
        </ul>
    </div>
</div>