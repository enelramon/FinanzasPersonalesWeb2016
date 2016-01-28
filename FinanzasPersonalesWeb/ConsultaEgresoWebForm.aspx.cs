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

            if (ElementosDropDownList.SelectedIndex == 0)
            {
                if (DatosTextBox.Text.Trim().Length == 0)
                {
                    condicion = "1=1";
                }
                else
                {
                    condicion = "EgresoId = " + DatosTextBox.Text;
                }
                dataTable = egreso.Listado(" * ", condicion, "");
                ElementosGridView.DataSource = dataTable;
                ElementosGridView.DataBind();
            }
            if(ElementosDropDownList.SelectedIndex == 1)
            {
                if(DatosTextBox.Text.Trim().Length == 0)
                {
                    condicion = "2=2";
                }
                else
                {
                    condicion = "Fecha = " + DatosTextBox.Text;
                }
                dataTable = egreso.Listado(" * ", condicion, "");
                ElementosGridView.DataSource = dataTable;
                ElementosGridView.DataBind();
            }
            if(ElementosDropDownList.SelectedIndex == 2)
            {
                if(DatosTextBox.Text.Trim().Length == 0)
                {
                    condicion = "3=3";
                }
                else
                {
                    condicion = "Monto = " + DatosTextBox.Text;
                }
                dataTable = egreso.Listado(" * ", condicion, "");
                ElementosGridView.DataSource = dataTable;
                ElementosGridView.DataBind();
            }

        }
    }
}