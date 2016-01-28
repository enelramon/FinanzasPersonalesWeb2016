<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FinanzasPersonalesWeb.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 1407px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
          <LayoutTemplate>
              <table>
                                 <td align="right">
                                      <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                  </td>
                                  <td class="auto-style4">
                                      <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="right">
                                      <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                  </td>
                                  <td class="auto-style4">
                                      <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="2">
                                      <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                  </td>
                              </tr>
                              <tr>
                                  <td align="center" colspan="2" style="color:Red;">
                                      <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="right" colspan="2">
                                      <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Log In" ValidationGroup="Login1" />
                                  </td>
                              </tr>
                          </table>
          </LayoutTemplate>
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="true" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>
</asp:Content>
