using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class EgresosWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cuentas cuenta = new Cuentas();
            TiposEgresos tipoEgreso = new TiposEgresos();
            if(IsPostBack == false)
            {
                CuentaIdDropDownList.DataSource = cuenta.Listado(" * ", "1=1", "");
                CuentaIdDropDownList.DataTextField = "Descripcion";
                CuentaIdDropDownList.DataValueField = "CuentaId";
                CuentaIdDropDownList.DataBind();

                TipoEgresoIdDropDownList.DataSource = tipoEgreso.Listado(" * ", "1=1", "");
                TipoEgresoIdDropDownList.DataTextField = "Descripcion";
                TipoEgresoIdDropDownList.DataValueField = "TipoEgresoId";
                TipoEgresoIdDropDownList.DataBind();
            }

        }
        public void LlenarDatos(Egresos egreso)
        {
            egreso.CuentaId = Convert.ToInt32(CuentaIdDropDownList.SelectedValue);
            //egreso.MiembroId = Convert.ToInt32(MiembroIdDropDownList.SelectedValue);
            egreso.Observacion = ObservacionListBox.Text;
            egreso.Fecha = FechaTextBox.Text;
            egreso.Monto = Convert.ToSingle(MontoTextBox.Text);
            egreso.TipoEgresoId = Convert.ToInt32(TipoEgresoIdDropDownList.SelectedValue);
        }
        public int Convertir()
        {
            int id;
            int.TryParse(EgresoIdTextBox.Text, out id);

            return id;
        }
        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Egresos egresos = new Egresos();
            LlenarDatos(egresos);
            if (egresos.Insertar())
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Egreso Guardado')</SCRIPT>");
            }
            else
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Error al Guardar')</SCRIPT>");
            }
        }
        public void Limpiar()
        {
            FechaTextBox.Text = string.Empty;
            MiembroIdDropDownList.ClearSelection();
            MontoTextBox.Text = string.Empty;
            TipoEgresoIdDropDownList.ClearSelection();
            CuentaIdDropDownList.ClearSelection();
            ObservacionListBox.Text = string.Empty;
        }
        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();   
        }
    }
}