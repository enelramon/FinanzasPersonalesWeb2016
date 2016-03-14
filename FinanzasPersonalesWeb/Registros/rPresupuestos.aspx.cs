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


        public void LlenarDatos(Presupuesto presupuesto)
        {
            presupuesto.UsuarioId = Convert.ToInt32(UsuarioDropDownList.SelectedValue);
            presupuesto.Descripcion = DescripcionTextBox.Text;
            foreach (GridViewRow dr in DetalleGridView.Rows)
            {
                presupuesto.AgregarDetalle(Convert.ToInt32(dr.Cells[0].Text), Convert.ToSingle(dr.Cells[1].Text));
            }

        }

        public void LlenarRegistro(Presupuesto presupuesto)
        {
            Limpiar();
            PresupuestoTextBox.Text = presupuesto.PresupuestoId.ToString();
            UsuarioDropDownList.SelectedValue = presupuesto.UsuarioId.ToString();
            DescripcionTextBox.Text = presupuesto.Descripcion;
            foreach (var li in presupuesto.Detalle)
            {
                DataTable dt = (DataTable)ViewState["Detalle"];
                dt.Rows.Add(li.TipoEgresoId, li.Monto);
                ViewState["Detalle"] = dt;
                this.BindGrid();
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

        protected void Limpiar()
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[2] { new DataColumn("Tipo Egreso"), new DataColumn("Monto") });

            PresupuestoTextBox.Text = "";
            PresupuestoTextBox.Enabled = true;
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
            if (PresupuestoTextBox.Enabled)
            {
                Presupuesto presupuesto = new Presupuesto();
                LlenarDatos(presupuesto);
                if(presupuesto.Insertar())
                    Utilitarios.ShowToastr(this, "Edicion exitosa", "Exito", "success");
                Limpiar();
            }
            else
            {
                Presupuesto presupuesto = new Presupuesto();
                presupuesto.PresupuestoId = Convert.ToInt16(PresupuestoTextBox.Text);
                LlenarDatos(presupuesto);
               if (presupuesto.Editar())
                    Utilitarios.ShowToastr(this, "Edicion exitosa", "Exito", "success");
                Limpiar();
            }
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            Presupuesto presupuesto = new Presupuesto();
            if (presupuesto.Buscar(Convert.ToInt32(PresupuestoTextBox.Text)))
            {
                if (presupuesto.Eliminar())
                    Utilitarios.ShowToastr(this, "Registro eliminado", "Exito", "success");
                Limpiar();
            }
            else {
                EliminarRequiredFieldValidator.IsValid = false;
                Limpiar();
            }

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Presupuesto presupuesto = new Presupuesto();
            if (presupuesto.Buscar(Convert.ToInt16(PresupuestoTextBox.Text)))
            {
                LlenarRegistro(presupuesto);
                Utilitarios.ShowToastr(this, "Busqueda exitosa", "Exito");
                PresupuestoTextBox.Enabled = false;
            }
            else
            {
                Limpiar();
                Utilitarios.ShowToastr(this, "No se pudo encontrar el presupuesto especificado", "Error", "error");
            }
        }
    }
}
