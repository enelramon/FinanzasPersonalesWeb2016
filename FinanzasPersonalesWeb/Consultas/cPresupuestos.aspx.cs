using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace FinanzasPersonalesWeb.Consultas
{
    public partial class cPresupuestos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    

          
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Presupuesto presupuesto = new Presupuesto();
            DataTable dataTable = new DataTable();
            string condicion;

            if (BuscarTextBox.Text.Trim().Length == 0)
            {
                condicion = "1=1";
            }
            else
            {
                if (FiltroDropDownList.SelectedItem.Value.Equals("Descripcion"))
                    condicion = FiltroDropDownList.SelectedItem.Value + " like '%" + BuscarTextBox.Text +"%' ";
                else
                    condicion = FiltroDropDownList.SelectedItem.Value + " = " + BuscarTextBox.Text;
            }
            dataTable = presupuesto.Listado(" * ", condicion, "");
            PresupuestoGridView.DataSource = dataTable;
            PresupuestoGridView.DataBind();
        }


    }
}