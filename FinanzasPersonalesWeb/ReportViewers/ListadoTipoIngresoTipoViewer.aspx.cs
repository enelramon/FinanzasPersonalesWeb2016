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
    public partial class ListadoTipoIngresoTipoViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TiposIngresos TipoIngreso = new TiposIngresos();

                RptViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                RptViewer.Reset();
                RptViewer.LocalReport.ReportPath = Server.MapPath(@"~\Reportes\TipoIngresoRpt.rdlc");

                RptViewer.LocalReport.DataSources.Clear();

                RptViewer.LocalReport.DataSources.Add(new ReportDataSource("DataSetTipoIngreso", TipoIngreso.Listado("*", "1=1", "")));
                RptViewer.LocalReport.Refresh();

            }
        }
    }
}