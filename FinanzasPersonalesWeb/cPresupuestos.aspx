<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="cPresupuestos.aspx.cs" Inherits="FinanzasPersonalesWeb.cPresupuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .dropdown {
            color: black;
        } 
        .vertical-center {
            position: relative;
           
            transform: translateY(50%);
        }   
        
    </style>

</asp:Content>  

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="container">
        <div class="row ">
            <div class="col-sm-6 col-md-2 text-right vertical-center">
                Buscar por:  
            </div>
            <div class="col-sm-6 col-md-3">   
                <asp:DropDownList ID="FiltroDropDownList" Width="100%" CssClass="dropdown" runat="server" Height="2.5em">
                    <asp:ListItem Selected="True" Value="PresupuestoId">Id</asp:ListItem>
                    <asp:ListItem Value="UsuarioId">Usuario</asp:ListItem>
                    <asp:ListItem>Descripcion</asp:ListItem>          
                </asp:DropDownList>
           </div>
            <div class="col-sm-6 col-md-4" >   
                <asp:TextBox ID="BuscarTextBox"  runat="server" Width="100%" Height="2.5em"></asp:TextBox>
            </div>
            <div class="col-sm-6 col-md-3">
                <asp:Button ID="BuscarButton" CssClass="btn btn-default" runat="server" Text="Buscar" OnClick="BuscarButton_Click" ValidationGroup="Filtro" />            
                <asp:RequiredFieldValidator ID="TipoDatoFiltroRequiredFieldValidator" runat="server" ControlToValidate="FiltroDropDownList" Display="Dynamic" ErrorMessage="*" ValidationGroup="Filtro"></asp:RequiredFieldValidator>
            </div>
       </div>    
            <br />
        <div class="col-sm-12 col-md-12">
                <asp:GridView ID="PresupuestoGridView" CssClass="table table-bordered col-md-6 col-md-offset-4 col-sm-6 col-sm-offset-4"  runat="server" Width="313px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
       </div>
    </div>
 </asp:Content>         
        

  
