using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.ReportViewers
{
    public partial class ListadoEgresos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Egresos egreso = new Egresos();

                EgresosReportViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                EgresosReportViewer.Reset();
                EgresosReportViewer.LocalReport.ReportPath = Server.MapPath(@"~\Rpts/EgresosRpt.rdlc");

                EgresosReportViewer.LocalReport.DataSources.Clear();

                EgresosReportViewer.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("EgresosDataSet", egreso.Listado(" * ", "1=1", "")));
                EgresosReportViewer.LocalReport.Refresh();
            }
        }
    }
}