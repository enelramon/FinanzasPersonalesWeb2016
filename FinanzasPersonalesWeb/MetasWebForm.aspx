<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MetasWebForm.aspx.cs" Inherits="FinanzasPersonalesWeb.MetasWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <asp:Table ID="Table1" runat="server" Height="275px" Width="412px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="MetaId:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="MetaIdTextBox" runat="server" placeholder="Ingrese Id" CssClass="form-control" Width="139px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="BuscarButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                        <asp:TextBox ID="DescripcionTextBox" runat="server" CssClass="form-control " placeholder="Ingrese una Descripcion" Width="140px"></asp:TextBox>  <br />  
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="Monto:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="MontoTextBox" runat="server" CssClass="form-control "></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>  
                     <asp:Button ID="AgregarButton" runat="server" Text="Agregar" CssClass="btn btn-primary" OnClick="AgregarButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="Tipo de Ingreso"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="TipoDeIngresoDropDownList" runat="server" CssClass="form-control" Height="26px" Width="149px"></asp:DropDownList><br />
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="Metas"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:ListBox ID="MetasListBox" runat="server" CssClass="form-control" Width="145px"></asp:ListBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                   <asp:Button Text="Nuevo" runat="server" ID="NuevoButton" CssClass="btn btn-primary" OnClick="NuevoButton_Click" />
                </asp:TableCell>
                <asp:TableCell>
                   <asp:Button Text="Guardar" runat="server" ID="GuadarButton" CssClass="btn btn-primary" OnClick="GuadarButton_Click1" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button Text="Eliminar" runat="server" ID="EliminarButton" CssClass="btn btn-primary" OnClick="EliminarButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
     </center>
</asp:Content>
