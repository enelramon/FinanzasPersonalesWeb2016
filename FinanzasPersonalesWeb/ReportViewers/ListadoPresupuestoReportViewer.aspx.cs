using BLL;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanzasPersonalesWeb.ReportViewers
{
    public partial class ListadoPresupuestoReportViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Presupuesto presupuesto = new Presupuesto();
            ListadoPresupuestoViewer.ProcessingMode = ProcessingMode.Local;
            ListadoPresupuestoViewer.LocalReport.ReportPath = Server.MapPath("~/Rpts/ListadoPresupuesto.rdlc");            
            ListadoPresupuestoViewer.LocalReport.DataSources.Clear();
            ListadoPresupuestoViewer.LocalReport.DataSources.Add(new ReportDataSource("Presupuestos", presupuesto.Listado("*", "1=1", "")));           
            ListadoPresupuestoViewer.LocalReport.Refresh();

        }
    }
}