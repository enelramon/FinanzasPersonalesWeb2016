using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.ReportViewers
{
    public partial class ListadoUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Usuarios Usuario = new Usuarios();

                RptViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                RptViewer.Reset();
                RptViewer.LocalReport.ReportPath = Server.MapPath(@"~\Rpts/UsuariosReport.rdlc");

                RptViewer.LocalReport.DataSources.Clear();

                RptViewer.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("Usuarios", Usuario.Listado(" * ", "1=1", "")));
                RptViewer.LocalReport.Refresh();
            }
        }
    }
}