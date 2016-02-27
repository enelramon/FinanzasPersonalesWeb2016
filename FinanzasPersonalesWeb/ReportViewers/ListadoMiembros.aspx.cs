using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.ReportViewers
{
    public partial class ListadoMiembros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Miembros miembro = new Miembros();

                MiembrosRptViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                MiembrosRptViewer.Reset();
                MiembrosRptViewer.LocalReport.ReportPath = Server.MapPath(@"~\Rpts/MiembrosRpt.rdlc");

                MiembrosRptViewer.LocalReport.DataSources.Clear();

                MiembrosRptViewer.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("Miembros", miembro.Listado(" * ", "1=1", "")));
                MiembrosRptViewer.LocalReport.Refresh();
            }
        }
    }
}