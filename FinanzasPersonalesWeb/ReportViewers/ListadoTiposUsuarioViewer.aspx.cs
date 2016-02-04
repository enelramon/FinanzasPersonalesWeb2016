using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.ReportViewers
{
    public partial class ListadoTiposUsuarioViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (! IsPostBack)
            {
                TiposUsuarios TipoUsuario = new TiposUsuarios();
                RptViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                RptViewer.Reset();
                RptViewer.LocalReport.ReportPath = Server.MapPath(@"");
                RptViewer.LocalReport.DataSources.Clear();
                RptViewer.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("Dataset1", TipoUsuario.Listado("*","1=1","")));
                RptViewer.LocalReport.Refresh();
            }
        }
    }
}