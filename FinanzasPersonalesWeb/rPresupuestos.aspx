<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="rPresupuestos.aspx.cs" Inherits="FinanzasPersonalesWeb.rPresupuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--    <!DOCTYPE html>
    
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
        <div>
        
        </div>
        </form>
    </body> 
    </html>--%>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    Presupuesto:&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;<asp:TextBox ID="PresupuestoTextBox" runat="server"></asp:TextBox>
    &nbsp;
    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" Width="75px" />
&nbsp;&nbsp;&nbsp; Usuario&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="UsuarioDropDownList" runat="server" Height="19px" Width="99px" >
    </asp:DropDownList>
    <br />
    Descripcion&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
    <br />
    Tipo de Egreso
    <asp:DropDownList ID="TipoEgresoDropDownList" runat="server" >
    </asp:DropDownList>
    <br />
    Monto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="MontoTextBox" runat="server"></asp:TextBox>
    &nbsp;<asp:Button ID="AgregarButton" runat="server" Text="Agregar" Width="75px" OnClick="AgregarButton_Click"  />
    <br />
    <asp:GridView ID="DetalleGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="244px" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Tipo Egreso" HeaderText="Tipo Egreso" ReadOnly="True" />
            <asp:BoundField DataField="Monto" HeaderText="Monto" ReadOnly="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" Width="75px" OnClick="LimpiarButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" Width="75px" OnClick="GuardarButton_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" Width="75px" OnClick="EliminarButton_Click" />
    <br />
</asp:Content>
