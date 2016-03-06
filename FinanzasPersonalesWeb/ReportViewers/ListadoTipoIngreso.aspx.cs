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
    public partial class ListadoTipoIngreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TiposIngresos TipoIngreso = new TiposIngresos();

                TipoIngresoRptViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                TipoIngresoRptViewer.Reset();
                TipoIngresoRptViewer.LocalReport.ReportPath = Server.MapPath("~/Rpts/TipoIngresoRpt.rdlc");

                TipoIngresoRptViewer.LocalReport.DataSources.Clear();

                TipoIngresoRptViewer.LocalReport.DataSources.Add(new ReportDataSource("DataSetTipoIngreso", TipoIngreso.Listado("*", "1=1", "")));
                TipoIngresoRptViewer.LocalReport.Refresh();

            }
        }
    }
}