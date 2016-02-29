<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rEgresos.aspx.cs" Inherits="FinanzasPersonalesWeb.EgresosWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <script type="text/javascript">
        $(function () {
            $("[id$=ObservacionTextBox]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/Registros/rEgresos.aspx/GetSugestions") %>',
                        data: "{ 'filtro': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item,
                                    val:0 //item.split('-')[1]
                                }
                            }))
                        },
                        error: function (response) {
                            alert(response.responseText);
                        },
                        failure: function (response) {
                            alert(response.responseText);
                        }
                    });
                },
                select: function (e, i) {
                    //$("[id$=hfCustomerId]").val(i.item.val);
                },
                minLength: 1
            });
        });   
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            
        <div class="panel panel-success">
        <div class="panel-heading">Registro de egreso</div>

        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">

                <%--EgresoId--%>
                <div class="form-group">
                    <label for="EgresoIdTextBox" class="col-md-3 control-label input-sm">EgresoId: </label>
                    <div class="col-md-4 col-sm-2 col-xs-4">
                        <asp:TextBox ID="EgresoIdTextBox" runat="server" placeholder="0" class="form-control input-sm" type="number"></asp:TextBox>
                    </div>
                    <div class="col-md-4 col-sm-2 col-xs-4">
                        <asp:Button ID="BuscarButton" runat="server" class="btn btn-info btn-md" Text="Buscar" OnClick="BuscarButton_Click1" />
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                <%--Fecha--%>
                <div class="form-group">
                    <label for="FechaTextBox" class="col-md-3 control-label input-sm">Fecha:</label>
                    <div class="col-md-5">
                        <asp:TextBox ID="FechaTextBox" runat="server" Class="form-control input-sm" TextMode="Date"></asp:TextBox>


                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                 <%--Monto--%>
                <div class="form-group">
                    <label for="MontoTextBox" class="col-md-3 control-label input-sm">Monto:</label>
                    <div class="col-md-5">
                        <asp:TextBox ID="MontoTextBox" runat="server" Class="form-control input-sm" placeholder="'20,000'"></asp:TextBox>


                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                 <%--CuentaId--%>
                <div class="form-group">
                    <label for="CuentaIdDropDownList" class="col-md-3 control-label input-sm">CuentaId:</label>
                    <div class="col-md-5">
                        <asp:DropDownList ID="CuentaIdDropDownList" runat="server" Class="form-control input-sm"></asp:DropDownList>


                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                 <%--MiembroId--%>
                <div class="form-group">
                    <label for="MiembroIdDropDownList" class="col-md-3 control-label input-sm">MiembroId:</label>
                    <div class="col-md-5">
                        <asp:DropDownList ID="MiembroIdDropDownList" runat="server" Class="form-control input-sm"></asp:DropDownList>


                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                 <%--TipoEgresoId--%>
                <div class="form-group">
                    <label for="TipoEgresoIdDropDownList" class="col-md-3 control-label input-sm">TipoEgresoId:</label>
                    <div class="col-md-5">
                        <asp:DropDownList ID="TipoEgresoIdDropDownList" runat="server" Class="form-control input-sm"></asp:DropDownList>


                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                  <%--Observaciones--%>
                <div class="form-group">
                    <label for="ObservacionesTextBox" class="col-md-3 control-label input-sm">Observaciones:</label>
                    <div class="col-md-5">
                        <asp:TextBox ID="ObservacionesTextBox" runat="server" Class="form-control input-sm" Rows="4" placeholder="'Egreso para el colegio'" TextMode="MultiLine"></asp:TextBox>


                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
                

            </div>
        </div>

        <div class="panel-footer">
            <div class="text-center">
                <div class="form-group" style="display: inline-block">

                    <asp:Button Text="Nuevo" class ="btn btn-warning btn-md" runat="server" ID="NuevoButton" OnClick="NuevoButton_Click1"  />
                    <asp:Button Text="Guardar" class ="btn btn-success btn-md" runat="server" ID="GuadarButton" OnClick="GuadarButton_Click"  />
                    <asp:Button Text="Eliminar" class ="btn btn-danger btn-md" runat="server" ID="EliminarButton" OnClick="EliminarButton_Click1"  />

                </div>
            </div>

        </div>
    </div>
   
</asp:Content>
