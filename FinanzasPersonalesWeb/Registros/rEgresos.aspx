<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rEgresos.aspx.cs" Inherits="FinanzasPersonalesWeb.EgresosWebForm" %>
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
    
            
        <div class="container">
            <div class="row">
                <div class="btn-group">
                    <div class="col-md-4">
                        <asp:TextBox ID="EgresoIdTextBox" runat="server" CssClass="form-control" placeHolder="EgresoId" Height="33px" style="margin-left: 27px" Width="152px"></asp:TextBox>
                    </div>
                    <div class="col-md-1">
                        <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-success" Height="33px" Text="Buscar" Width="90px" OnClick="BuscarButton_Click" />
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox ID="FechaTextBox" runat="server" CssClass="form-control" Height="33px" style="margin-left: 50px" Width="152px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="btn-group">
                    <div class="col-md-4">
                        <br />
                         <asp:DropDownList ID="CuentaIdDropDownList" runat="server" CssClass="form-control" Height="33px" style="margin-left: 27px" Width="155px">
                         </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <br />
                        <asp:TextBox ID="MontoTextBox" runat="server" CssClass="form-control" Height="33px" placeholder="Monto" style="margin-right: 456px" Width="152px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="btn-group">
                    <div class ="col-md-4">
                        <br />
                         <asp:DropDownList ID="MiembroIdDropDownList" runat="server" palceholder="CuentaId" CssClass="form-control" style="margin-left:27px" Height="33px"  Width="155px">
                         </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <br />
                       <asp:DropDownList ID="TipoEgresoIdDropDownList" runat="server" CssClass="form-control" Height="33px" style="margin-right:456px" Width="155px">
                       </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="btn-group">
                    <div class="col-md-4">
                        <br />
                        <asp:TextBox ID="ObservacionTextBox" runat="server" CssClass="form-control" Height="100px" placeholder="Obsevaciones" style="margin-left: 27px" TextMode="MultiLine" Width="410px"></asp:TextBox>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <asp:Button ID="NuevoButton" runat="server" Height="35px" CssClass="btn btn-info" style="margin-left:65px"  Text="Nuevo" Width="90px" OnClick="NuevoButton_Click" />
                <asp:Button ID="GuardarButton" runat="server" Height="35px" CssClass="btn btn-primary" style="margin-left:15px" OnClick="GuardarButton_Click" Text="Guardar" Width="90px" />
                <asp:Button ID="EliminarButton" runat="server" Height="35px" CssClass="btn btn-danger" style="margin-left:15px" Text="Eliminar" Width="90px" OnClick="EliminarButton_Click" />
            </div>
        </div>
    </div>
   
</asp:Content>
