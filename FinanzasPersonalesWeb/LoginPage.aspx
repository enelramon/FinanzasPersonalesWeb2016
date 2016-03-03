<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FinanzasPersonalesWeb.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .form-login {
            background-color: #EDEDED;
            padding-top: 10px;
            padding-bottom: 20px;
            padding-left: 20px;
            padding-right: 20px;
            border-radius: 15px;
            border-color: #d2d2d2;
            border-width: 5px;
            box-shadow: 0 1px 0 #cfcfcf;
        }

        h4 {
            border: 0 solid #fff;
            border-bottom-width: 1px;
            padding-bottom: 10px;
            text-align: center;
        }

        .form-control {
            border-radius: 10px;
        }

        .wrapper {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-5 col-md-3">
                <div class="form-login">
                    <font color="black"><h4>Acceder</h4></font>
                    <asp:TextBox ID="UsuarioTextBox" CssClass="form-control" runat="server" placeholder="Usuario" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        ControlToValidate="UsuarioTextBox"
                        Display="Dynamic"
                        ErrorMessage="Cannot be empty."
                        runat="server" />
                    <br />
                    <asp:TextBox ID="ContrasenaTextBox" TextMode="Password"
                        runat="server" CssClass="form-control" placeholder="Contraseña" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                        ControlToValidate="ContrasenaTextBox"
                        ErrorMessage="Cannot be empty."
                        runat="server" />
                    <br />
                    <asp:CheckBox ID="RememberMeCheckBox" runat="server" Text="Recordarme" CssClass="form-control" />
                    <div class="wrapper">
                        <span class="group-btn">
                            <asp:Button ID="Submit1" OnClick="Login1_Authenticate" CssClass="form-control btn btn-success" Text="Acceder"
                                runat="server" />
                        </span>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>







