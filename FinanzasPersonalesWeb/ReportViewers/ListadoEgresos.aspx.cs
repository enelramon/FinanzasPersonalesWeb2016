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

                ReportViewer1.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                ReportViewer1.Reset();
                ReportViewer1.LocalReport.ReportPath = Server.MapPath(@"~\Rpts/EgresosRpt.rdlc");

                ReportViewer1.LocalReport.DataSources.Clear();

                ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("EgresosDataSet", egreso.Listado(" * ", "1=1", "")));
                ReportViewer1.LocalReport.Refresh();
            }
        }
    }
}