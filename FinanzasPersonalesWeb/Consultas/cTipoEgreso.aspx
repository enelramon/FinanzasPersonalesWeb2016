<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cTipoEgreso.aspx.cs" Inherits="FinanzasPersonalesWeb.ConsultaTipoEgreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="panel panel-success">
        <div class="panel-heading">Consulta de tipo egresos</div>
        
          <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">
         
                <%--Campo--%>
                <div class="form-group">
                   <asp:Label ID="Label2" runat="server" Class=" col-md-3 control-label input-sm" Text="Consultar por:"></asp:Label>
                   <div class="col-md-2">
                      <asp:DropDownList ID="ConsultaDropDownList" runat="server" CssClass="form-control" >
                         <asp:ListItem>Tipo Egreso Id</asp:ListItem>
                         <asp:ListItem>Descripcion</asp:ListItem>
                      </asp:DropDownList>
                   </div>
                   <div class="col-md-5">
                       <asp:TextBox ID="CampoTextBox" runat="server" placeholder="Ingrese el campo ha consultar" Class="form-control input-sm"></asp:TextBox>
                   </div>
                   <div class="col-md-2">
                      <asp:Button ID="BuscarButton" runat="server" OnClick="BuscarButton_Click"  CssClass="btn btn-sm btn-info" Text="Buscar" />
                    </div>
                 </div>
                <asp:GridView ID="DatoGridView" runat="server" style="margin-top: 7px; margin-bottom: 0px" Width="580px">
                    <Columns>
                        <asp:HyperLinkField 
                             DataNavigateUrlFields="TipoEgresoId" 
                             DataNavigateUrlFormatString="~/Registros/rTipoEgreso.aspx?idBuscado={0}" 
                              Text="Editar" />

                    </Columns>
                </asp:GridView>
     </div>
    </div> 
  </div>
</asp:Content>
