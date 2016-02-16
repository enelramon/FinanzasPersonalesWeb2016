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
  background:#bff5c7;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
        <div class="col-md-2">
   
            <h6><asp:Label ID="Label" runat="server" Text="TransferenciaId">
                </asp:Label></h6>
            <br />
            <h6><asp:Label ID="Label3" runat="server" Text="Fecha"></asp:Label></h6>    
            <br />
            <h6><asp:Label ID="Label7" runat="server" Text="Cuenta origen Id"></asp:Label></h6>   
            <br />
            <h6><asp:Label ID="Label1" runat="server" Text="Cuenta Destino Id"></asp:Label></h6>
            <br />
            <h6><asp:Label ID="Label2" runat="server" Text="Monto"></asp:Label></h6>   
            <br />
            <h6><asp:Label ID="Label4" runat="server" Text="Observacion"></asp:Label></h6>   
            <br />
            <h6><asp:Label ID="Label5" runat="server" Text="Usuario Id"></asp:Label></h6>   
          
        </div>
        <div class="col-md-2">
          
            <asp:TextBox ID="TransferenciaIdTextBox" runat="server"></asp:TextBox>    
            <br />
            <br />
            <br />
            <asp:TextBox ID="FechaTextBox" runat="server" CssClass="form-class"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="CuentaOrigenTextBox" runat="server" CssClass="form-class"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="CuentaDestinoTextBox" runat="server" CssClass="form-class"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="MontoTextBox" runat="server" CssClass="form-class"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="ObservacionTextBox" runat="server" CssClass="form-class"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="UsuarioIdTextBox" runat="server" CssClass="form-class"></asp:TextBox>
      
        </div>

        <div class="col-md-2">
            <asp:Button ID="Buscarbutton" runat="server" Text="Buscar" CssClass="btn btn-info" OnClick="Buscarbutton_Click" />
        </div>
            <div class="col-md-4">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
           <asp:Button ID="Nuevobutton" runat="server" CssClass="btn btn-primary" Text="Nuevo" OnClick="Nuevobutton_Click"/>
           <asp:Button ID="GuardarButton" runat="server" OnClick="GuardarButton_Click1" CssClass="btn btn-success" Text="Guardar"/>
           <asp:Button ID="Eliminarbutton" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="Eliminarbutton_Click" />

        </div>
            </div>

    </div>

        </asp:Content>