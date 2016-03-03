<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="FinanzasPersonalesWeb.Registros.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">Registro de Usuarios</div>

        <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">

                <asp:ValidationSummary ID="Valid" runat="server" ValidationGroup="1" CssClass="validationsColor" DisplayMode="BulletList" />

                <%--UsuarioId--%>
                <div class="form-group">
                    <label for="UsuarioIdTextBox" class="col-md-3 control-label input-sm">ID: </label>
                    <div class="col-md-1  col-sm-12 col-xs-12">
                        <asp:TextBox ID="UsuarioIdTextBox" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>


                <%--Nombre--%>
                <div class="form-group">
                    <label for="NombreTextBox" class="col-md-3 control-label input-sm">Nombre: </label>
                    <div class="col-md-8 col-sm-12 col-xs-12">
                        <asp:TextBox ID="NombreTextBox" CssClass="form-control" runat="server" placeholder="Nombre"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="ApellidoTextBox"
                            ErrorMessage="Debe poner un Nombre"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4">
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                <%--Apellido--%>
                <div class="form-group">
                    <label for="ApellidoTextBox" class="col-md-3 control-label input-sm">Apellido:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="ApellidoTextBox" CssClass="form-control" runat="server" placeholder="Apellido"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="ApellidoTextBox"
                            ErrorMessage="Debe poner un Apellido"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>




                <%--Usuario--%>
                <div class="form-group">
                    <label for="UsuarioTextBox" class="col-md-3 control-label input-sm">Usuario:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="UsuarioTextBox" CssClass="form-control" runat="server" placeholder="Usuario"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="ApellidoTextBox"
                            ErrorMessage="Debe poner una Contraseña"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                <%--Contrasena--%>
                <div class="form-group">
                    <label for="PassTextBox" class="col-md-3 control-label input-sm">Contraseña:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="PassTextBox" CssClass="form-control" type="password" runat="server" placeholder="Contraseña"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass=""
                            ControlToValidate="PassTextBox"
                            ErrorMessage="Debe poner una contraseña"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                <%--Repetir Contraseña--%>
                <div class="form-group">
                    <label for="RptPassTextBox" class="col-md-3 control-label input-sm">Repetir Contraseña:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="RptPassTextBox" CssClass="form-control" type="password" runat="server" placeholder="Repetir Contraseña"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass=""
                            ControlToValidate="RptPassTextBox"
                            ErrorMessage="Las contraseñas deben coincidir."
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>

                <%--Email--%>
                <div class="form-group">
                    <label for="EmailTextBox" class="col-md-3 control-label input-sm">Correo Electronico:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="EmailTextBox" TextMode="Email" CssClass="form-control" runat="server" placeholder="Correo Electronico"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="EmailTextBox" ErrorMessage="Email is required"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
                <div class="text-center">
                    <div class="form-group col-lg-12">
                        <asp:CheckBox ID="AceptarCheckBox" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Acepto los Terminos y Condiciones de uso." />
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <div class="text-center">
                <div class="form-group" style="display: inline-block">

                    <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" CssClass="btn btn-warning" />
                    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="GuardarButton_Click" />
                    <asp:Button ID="ModificarButton" runat="server" Text="Modificar" CssClass="btn btn-warning" OnClick="ModificarButton_Click" Enabled="false" />


                </div>
            </div>

        </div>
    </div>
</asp:Content>
