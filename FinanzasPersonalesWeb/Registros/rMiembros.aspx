<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rMiembros.aspx.cs" Inherits="FinanzasPersonalesWeb.Registros.MiembrosWebFor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 472px;
        }
        .auto-style5 {
            width: 472px;
            height: 77px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Registro de Miembros</h3><br />
        <div class = "row" style="margin:0 2px 0 2px" >
    <div class="col-md-12" id="AlertNotificationDiv" runat="server">
      <asp:Label id="AlertNotificationBox" runat="server"/>
    </div>
</div>
    <table align = "right" style="width: 100%; height: 133px; ">
        <tr>
            <td class="auto-style4">MiembroId:
                <asp:TextBox ID="TbMiembroId" runat="server"></asp:TextBox>
                <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="TbMiembroId" ErrorMessage="Así no" />
&nbsp;
   
              <asp:Button ID="BtnBuscar" class ="btn btn-info btn-sm" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <form class="w3-container">

</form>
        <tr>
            <td class="auto-style4">Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                <asp:TextBox ID="TbNombre" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Estado:
                <br>
                <asp:RadioButtonList ID="EstadoRbList" runat="server">
                    <asp:ListItem>Activo</asp:ListItem>
                    <asp:ListItem>Inactivo</asp:ListItem>
                </asp:RadioButtonList>

            
      
        </tr>
                <tr>
            <td class="auto-style4">Usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownUsuario" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="BtnLimpiar" class ="btn btn-warning btn-sm" runat="server" Text="Limpiar" OnClick="BtnLimpiar_Click" />
&nbsp;&nbsp;
                <asp:Button ID="BtnGuardar" class ="btn btn-success btn-sm" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
&nbsp;&nbsp;
                <asp:Button ID="BtnEliminar" class ="btn btn-danger btn-sm" runat="server" Text="Eliminar" OnClick="BtnEliminar_Click" />

            
      
        </tr>
        </table>
</asp:Content>
