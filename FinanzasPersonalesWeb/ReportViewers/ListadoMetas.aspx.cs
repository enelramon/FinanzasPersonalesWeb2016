using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.ReportViewers
{
    public partial class ListadoMetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Metas meta = new Metas();

                MetasReportViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                MetasReportViewer.Reset();
                MetasReportViewer.LocalReport.ReportPath = Server.MapPath(@"~\Rpts/MetasRpt.rdlc");

                MetasReportViewer.LocalReport.DataSources.Clear();

                MetasReportViewer.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("MetasDataSet", meta.Listado(" * ", " 1=1 ", "")));
                MetasReportViewer.LocalReport.Refresh();
            }
        }
    }
}