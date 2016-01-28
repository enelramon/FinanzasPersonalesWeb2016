<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EgresosWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.EgresosWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #TextArea1 {
            height: 75px;
        }
        #ObservacionesTextArea {
            height: 86px;
            width: 136px;
        }
        .auto-style4 {
            width: 331px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; margin-bottom: 40px;">
        <tr>
            <td class="auto-style4">EgresoId:<asp:TextBox ID="EgresoIdTextBox" runat="server" Height="19px" style="margin-left: 27px" Width="152px"></asp:TextBox>
                <asp:Button ID="BuscarButton" runat="server" Height="26px" Text="Buscar" Width="80px" OnClick="BuscarButton_Click" />
            </td>
            <td>Fecha:<asp:TextBox ID="FechaTextBox" runat="server" Height="19px" style="margin-left: 50px" Width="152px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">CuentaId:<asp:DropDownList ID="CuentaIdDropDownList" runat="server" Height="22px" style="margin-left: 27px" Width="155px">
                </asp:DropDownList>
            </td>
            <td>Monto:<asp:TextBox ID="MontoTextBox" runat="server" Height="19px" style="margin-left: 47px" Width="152px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">MiembroId:<asp:DropDownList ID="MiembroIdDropDownList" runat="server" Height="22px" style="margin-left: 13px" Width="155px">
                </asp:DropDownList>
                <br />
                <br />
                Observacion:<asp:TextBox ID="ObservacionTextBox" runat="server" Height="78px" style="margin-left: 6px" TextMode="MultiLine" Width="154px"></asp:TextBox>
            </td>
            <td>TipoEgresoId:<asp:DropDownList ID="TipoEgresoIdDropDownList" runat="server" Height="22px" style="margin-left: 3px" Width="156px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;
    <p style="margin-left: 120px">
        <asp:Button ID="NuevoButton" runat="server" Height="26px" style="margin-left: 65px" Text="Nuevo" Width="80px" OnClick="NuevoButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="GuardarButton" runat="server" Height="26px" OnClick="GuardarButton_Click" Text="Guardar" Width="80px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="EliminarButton" runat="server" Height="26px" Text="Eliminar" Width="81px" OnClick="EliminarButton_Click" style="margin-left: 0px" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    </p>
</asp:Content>
