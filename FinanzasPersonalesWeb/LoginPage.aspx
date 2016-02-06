<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FinanzasPersonalesWeb.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 1407px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:TextBox ID="UsuarioTextBox" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="UsuarioTextBox"
            Display="Dynamic" 
            ErrorMessage="Cannot be empty." 
            runat="server" />
     <asp:TextBox ID="ContrasenaTextBox" TextMode="Password" 
             runat="server" />
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="ContrasenaTextBox"
            ErrorMessage="Cannot be empty." 
            runat="server" />
              <asp:CheckBox ID="RememberMeCheckBox" runat="server" />
        <asp:Button ID="Submit1" OnClick="Login1_Authenticate" Text="Acceder" 
       runat="server" />
    <p>
      <asp:Label ID="Msg" ForeColor="red" runat="server" />
    </p>
</asp:Content>
