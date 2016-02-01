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
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UsuarioDropDownList" ErrorMessage="Error en el Tipo de Usuario" ValidationGroup="AgregarNuevo">Porfavor elige un Usuario Valido...</asp:RequiredFieldValidator>
    <br />
    Descripcion&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DescripcionTextBox" Display="Dynamic" ErrorMessage="Por favor introduzca una descripcion valido..." ValidationGroup="AgregarNuevo">*</asp:RequiredFieldValidator>
    <br />
    Tipo de Egreso
    <asp:DropDownList ID="TipoEgresoDropDownList" runat="server" >
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="TipoEgresoRequiredFieldValidator" runat="server" ControlToValidate="TipoEgresoDropDownList" Display="Dynamic" ErrorMessage="Porfavor elige un tipo de egreso valido..." ValidationGroup="AgregarDetalle">Porfavor elige un tipo de egreso valido...</asp:RequiredFieldValidator>
    <br />
    Monto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="MontoTextBox" runat="server" ValidationGroup="AgregarDetalle"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MontoTextBox" Display="Dynamic" ErrorMessage="Porfavor digite un monto valido..." ValidationGroup="AgregarDetalle">*</asp:RequiredFieldValidator>
    &nbsp;<asp:Button ID="AgregarButton" runat="server" Text="Agregar" Width="75px" OnClick="AgregarButton_Click" ValidationGroup="AgregarDetalle"  />
    <asp:RegularExpressionValidator ID="MontoRegularExpressionValidator" runat="server" ControlToValidate="MontoTextBox" ErrorMessage="Porfavor ingrese un numero" ValidationExpression="(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)" ValidationGroup="AgregarDetalle"></asp:RegularExpressionValidator>
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
    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" Width="75px" OnClick="GuardarButton_Click" ValidationGroup="AgregarNuevo"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" Width="75px" OnClick="EliminarButton_Click" ValidationGroup="Eliminar" />
    <asp:RequiredFieldValidator ID="EliminarRequiredFieldValidator" runat="server" ControlToValidate="PresupuestoTextBox" ErrorMessage="Es necesario elegir un Presupuesto valido para eliminar" ValidationGroup="Eliminar">Porfavor elige un Presupuesto valido.</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="EliminarRegularExpressionValidator" runat="server" ControlToValidate="PresupuestoTextBox" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d+ " ValidationGroup="Eliminar" Visible="False"></asp:RegularExpressionValidator>
    <br />
</asp:Content>
