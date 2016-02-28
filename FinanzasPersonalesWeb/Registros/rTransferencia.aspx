<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rTransferencia.aspx.cs" Inherits="FinanzasPersonalesWeb.Transferencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #TextArea1 {
            height: 65px;
            width: 197px;
        }

        #ObservacionTextArea {
            height: 33px;
        }

        html {
            font-family: sans-serif;
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
            background: #bff5c7;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">
                <div class="form-group">
                    <asp:Label ID="Label" runat="server" Text="TransferenciaId" class="col-md-3 control-label input-sm"> </asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TransferenciaIdTextBox" placeholder="Transferencia Id" Class="form-control input-sm" runat="server"></asp:TextBox>

                    </div>
                    <asp:Button ID="BuscarButton" runat="server" Text="Button" Class="btn btn-info" />
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Fecha" class="col-md-3 control-label input-sm"></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="FechaTextBox" placeholder="Fecha" Class="form-control input-sm" runat="server"></asp:TextBox>

                    </div>

                </div>

                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Cuenta origen Id" class="col-md-3 control-label input-sm"></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="CuentaOrigenTextBox" placeholder="Cuenta origen" Class="form-control input-sm" runat="server"></asp:TextBox>

                    </div>

                </div>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Cuenta Destino Id" class="col-md-3 control-label input-sm"></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="CuentaDestinoTextBox" placeholder="Cuenta destino" Class="form-control input-sm" runat="server"></asp:TextBox>

                    </div>

                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Monto" class="col-md-3 control-label input-sm"></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="MontoTextBox" placeholder="Monto" Class="form-control input-sm" runat="server"></asp:TextBox>

                    </div>

                </div>


                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Observacion" class="col-md-3 control-label input-sm"></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="ObservacionTextBox" placeholder="Observacion" TextMode="MultiLine" Class="form-control input-sm" runat="server"></asp:TextBox>

                    </div>

                </div>

                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Usuario Id" class="col-md-3 control-label input-sm"></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="UsuarioIdTextBox" placeholder="Usuario id" Class="form-control input-sm" runat="server"></asp:TextBox>

                    </div>

                </div>


            </div>
            <div class="col-md-3 control-label input-sm"></div>
            <div class="col-md-8">
                <asp:Button ID="Nuevobutton" runat="server" Class="btn btn-primary" Text="Nuevo" OnClick="Nuevobutton_Click" />
                <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click1" Class="btn btn-success" Text="Guardar" />
                <asp:Button ID="Eliminarbutton" runat="server" Text="Eliminar" Class="btn btn-danger" OnClick="Eliminarbutton_Click" />

            </div>


        </div>




</asp:Content>
