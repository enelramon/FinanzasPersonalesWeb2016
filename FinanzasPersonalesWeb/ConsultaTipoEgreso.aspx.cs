using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class ConsultaTipoEgreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            TiposEgresos egreso = new TiposEgresos();
            DataTable dataTable = new DataTable();
            string condicion;
            int cuentaId;
            int.TryParse(CampoTextBox.Text, out cuentaId);
            if (ConsultaDropDownList.SelectedIndex == 0)
            {
                if (CampoTextBox.Text.Trim().Length == 0)
                {
                    condicion = "1=1";
                }
                else
                {
                    condicion = "TipoEgresoId = " + cuentaId;
                }
                dataTable = egreso.Listado(" TipoEgresoId, Descripcion, EsActivo,UsuarioId", condicion, "");
                DatoGridView.DataSource = dataTable;
                DatoGridView.DataBind();
            }
        }
    }
}