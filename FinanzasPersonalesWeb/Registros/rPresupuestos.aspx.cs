using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanzasPersonalesWeb.Consultas
{
    public partial class rPresupuestos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TiposEgresos tipoEgreso = new TiposEgresos();
            Usuarios usuario = new Usuarios();
            DataTable dt = new DataTable();
            if (IsPostBack == false)
            {
                UsuarioDropDownList.DataSource = usuario.Listado(" * ", "1=1", "");
                UsuarioDropDownList.DataTextField = "Usuario";
                UsuarioDropDownList.DataValueField = "UsuarioId";
                UsuarioDropDownList.DataBind();

                TipoEgresoDropDownList.DataSource = tipoEgreso.Listado(" * ", "1=1", "");
                TipoEgresoDropDownList.DataTextField = "Descripcion";
                TipoEgresoDropDownList.DataValueField = "TipoEgresoId";
                TipoEgresoDropDownList.DataBind();

                dt.Columns.AddRange(new DataColumn[2] { new DataColumn("Tipo Egreso"), new DataColumn("Monto") });
                ViewState["Detalle"] = dt;
            }
        }

        protected void BindGrid()
        {
            DetalleGridView.DataSource = (DataTable)ViewState["Detalle"];
            DetalleGridView.DataBind();
        }


        public void LlenarDatos(Presupuesto presupuesto) {
            presupuesto.UsuarioId = Convert.ToInt32(UsuarioDropDownList.SelectedValue);
            presupuesto.Descripcion = DescripcionTextBox.Text;
            foreach (GridViewRow dr in DetalleGridView.Rows)
            {
                presupuesto.AgregarDetalle(Convert.ToInt32(dr.Cells[0].Text), Convert.ToSingle(dr.Cells[1].Text));
            }
            
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)ViewState["Detalle"];
            dt.Rows.Add(TipoEgresoDropDownList.SelectedValue, MontoTextBox.Text.Trim());
            ViewState["Detalle"] = dt;
            this.BindGrid();
            MontoTextBox.Text = "";
        }

        protected void Limpiar() {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[2] { new DataColumn("Tipo Egreso"), new DataColumn("Monto") });

            PresupuestoTextBox.Text = "";
            DescripcionTextBox.Text = "";
            MontoTextBox.Text = "";
            ViewState["Detalle"] = dt;
            this.BindGrid();
        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Presupuesto presupuesto = new Presupuesto();
            LlenarDatos(presupuesto);
            presupuesto.Insertar();
            Limpiar();
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            Presupuesto presupuesto = new Presupuesto();
            if (presupuesto.Buscar(Convert.ToInt32(PresupuestoTextBox.Text)))
            {
                presupuesto.Eliminar();
                Limpiar();
            }
            else {
                EliminarRequiredFieldValidator.IsValid = false;
                Limpiar();
            }
            
        }

       
    }
}
