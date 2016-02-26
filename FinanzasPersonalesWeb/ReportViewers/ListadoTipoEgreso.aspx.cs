using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Microsoft.Reporting.WebForms;

namespace FinanzasPersonalesWeb.ReportViewers
{
    public partial class ListadoTipoEgreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TiposEgresos tipoEgreso = new TiposEgresos();

                TipoEgresoReportViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                TipoEgresoReportViewer.Reset();
                TipoEgresoReportViewer.LocalReport.ReportPath = Server.MapPath(@"~\Rpts\TipoEgreso.rdlc");

                TipoEgresoReportViewer.LocalReport.DataSources.Clear();

                TipoEgresoReportViewer.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", tipoEgreso.Listado("*", "1=1", "")));
                TipoEgresoReportViewer.LocalReport.Refresh();

            }
        }
    }
}