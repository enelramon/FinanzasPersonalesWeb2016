﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.rUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 82px;
        }
        .auto-style4 {
            margin-left: 106px;
        }
        .col-centered{
          display: block;
          margin-left: auto;
          margin-right: auto;
          text-align: center;
}
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   


    <h1>Registro</h1>
    <div class="row">
    <div class="form-group">
    <div class="col-xs-3 col-sm-3 col-lg-2 col-md-3">
       <h6><asp:Label ID="Label1" runat="server" Text="Nombres"></asp:Label></h6>
       <br />
       <h6><asp:Label ID="Label2" runat="server" Text="Apellidoss"></asp:Label></h6>
       <br />
       <h6><asp:Label ID="Label5" runat="server" Text="Usuario"></asp:Label></h6>
       <br />
       <h6><asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>   </h6>
       <br /> 
       <h6><asp:Label ID="Label7" runat="server" Text="Correo Electronico"></asp:Label></h6>   
</div>
 <div class="col-xs-9 col-sm-9 col-lg-5 col-md-9">
        <asp:TextBox ID="NombreTextBox" CssClass="form-control" runat="server" Text="Nombres" onclick="this.value='';" onblur="if (this.value==''){this.value='Nombres';}"></asp:TextBox>
        <br />
        <asp:TextBox ID="ApellidoTextBox" CssClass="form-control" runat="server" Text="Apellidos" onclick="this.value='';" onblur="if (this.value==''){this.value='Apellidos';}"></asp:TextBox>
        <br />
        <asp:TextBox ID="UsuarioTextBox" CssClass="form-control" runat="server" Text="Nombre de Usuario" onclick="this.value='';" onblur="if (this.value==''){this.value='Nombre de Usuario';}"></asp:TextBox>
        <br />
        <asp:TextBox ID="PassTextBox" CssClass="form-control" type="password" runat="server" Text="Contraseña" onclick="this.value='';" onblur="if (this.value==''){this.value='Contraseña';}"></asp:TextBox>
        <br />
        <asp:TextBox ID="EmailTextBox" CssClass="form-control" runat="server" Text="Correo Electronico" onclick="this.value='';" onblur="if (this.value==''){this.value='Correo Electronico';}"></asp:TextBox>
        <br />
               </div>

        
    <div class="col-lg-12 col-centered">
        <asp:CheckBox ID="AceptarCheckBox" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Acepto los Terminos y Condiciones de uso." />
    </div>
    <div class="col-lg-12 col-centered">
        <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" CssClass="btn btn-warning" />
        <asp:Button ID="GuardarButton" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="GuardarButton_Click" />
    </div>
        </div>
            </div>   
<!--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ControlToValidate="EmailTextBox" ErrorMessage="Email is required"
        SetFocusOnError="True" ></asp:RequiredFieldValidator>

    

    
   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
             ErrorMessage="Invalid Email" ControlToValidate="EmailTextBox"
             SetFocusOnError="True"
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>-->
    </asp:Content>