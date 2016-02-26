<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoPresupuestoReportViewer.aspx.cs" Inherits="FinanzasPersonalesWeb.ReportViewers.ListadoPresupuestoReportViewer" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <rsweb:ReportViewer ID="ListadoPresupuestoViewer" runat="server">
    </rsweb:ReportViewer>

</asp:Content>
