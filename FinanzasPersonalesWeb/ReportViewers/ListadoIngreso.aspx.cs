using BLL;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanzasPersonalesWeb.ReportViewers
{
    public partial class ListadoIngreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Ingresos Ingreso = new Ingresos();

                IngresoRptViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                IngresoRptViewer.Reset();
                IngresoRptViewer.LocalReport.ReportPath = Server.MapPath("~/Rpts/IngresoRpt.rdlc");

                IngresoRptViewer.LocalReport.DataSources.Clear();

                IngresoRptViewer.LocalReport.DataSources.Add(new ReportDataSource("IngresoDataSet", Ingreso.Listado(" * ", " 1=1 ", "")));
                IngresoRptViewer.LocalReport.Refresh();

            }
        }
    }
}