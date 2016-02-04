using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using BLL;

namespace FinanzasPersonalesWeb.ReportViewers
{
    public partial class ListadoUsuariosxTipoViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Usuarios usuario = new Usuarios();

                RptViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                RptViewer.Reset();
                RptViewer.LocalReport.ReportPath = Server.MapPath( @"~\Reportes\ListadoUsuariosxTipo.rdlc");

                RptViewer.LocalReport.DataSources.Clear();

                RptViewer.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", usuario.Listado("*","1=1","") ));
                RptViewer.LocalReport.Refresh();

            }
        }
    }
}