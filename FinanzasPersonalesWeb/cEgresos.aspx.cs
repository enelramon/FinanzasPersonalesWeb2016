using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class ConsultaEgresoWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConsultaBuscarButton_Click(object sender, EventArgs e)
        {
            Egresos egreso = new Egresos();
            DataTable dataTable = new DataTable();
            string condicion;

            if (DatosTextBox.Text.Trim().Length == 0)
            {
                condicion = "1=1";
            }
            else
            {
                condicion = ElementosDropDownList.SelectedItem.Text + " = " + DatosTextBox.Text;
            }
            dataTable = egreso.Listado(" * ", condicion, "");
            ElementosGridView.DataSource = dataTable;
            ElementosGridView.DataBind();
        }
    }
}