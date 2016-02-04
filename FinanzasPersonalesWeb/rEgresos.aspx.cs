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
            Miembros miembro = new Miembros();

            

            if (IsPostBack == false)
            {
                CuentaIdDropDownList.DataSource = cuenta.Listado(" * ", "1=1", "");
                CuentaIdDropDownList.DataTextField = "Descripcion";
                CuentaIdDropDownList.DataValueField = "CuentaId";
                CuentaIdDropDownList.DataBind();

                TipoEgresoIdDropDownList.DataSource = tipoEgreso.Listado(" * ", "1=1", "");
                TipoEgresoIdDropDownList.DataTextField = "Descripcion";
                TipoEgresoIdDropDownList.DataValueField = "TipoEgresoId";
                TipoEgresoIdDropDownList.DataBind();

                MiembroIdDropDownList.DataSource = miembro.Listado(" * ", "1=1", "");
                MiembroIdDropDownList.DataTextField = "Nombre";
                MiembroIdDropDownList.DataValueField = "MiembroId";
                MiembroIdDropDownList.DataBind();

            }

        }

        public int MiError()
        {
            int contador = 0;

            if(MontoTextBox.Text == "")
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Debe de completar el campo monto')</SCRIPT>");
                contador = 1;
            }
            return contador;
        }
        public void LlenarDatos(Egresos egreso)
        {
            float monto;
            int cuentaId, miembroId, tipoEgresoId;
            float.TryParse(MontoTextBox.Text, out monto);
            int.TryParse(CuentaIdDropDownList.SelectedValue, out cuentaId);
            int.TryParse(MiembroIdDropDownList.SelectedValue, out miembroId);
            int.TryParse(TipoEgresoIdDropDownList.SelectedValue, out tipoEgresoId);

            egreso.CuentaId = cuentaId;
            egreso.MiembroId = miembroId;
            //egreso.Observacion = ObservacionTextBox.Text;
            egreso.Fecha = FechaTextBox.Text;
            egreso.Monto = monto;
            egreso.TipoEgresoId = tipoEgresoId;
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
            if (EgresoIdTextBox.Text.Length == 0)
            {
                LlenarDatos(egresos);
                if (MiError() == 0 && egresos.Insertar())
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Egreso Guardado')</SCRIPT>");
                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Error al Guardar')</SCRIPT>");
                }
            }
            else
            {
                if (egresos.Buscar(Convertir()))
                {
                    egresos.EgresoId = Convertir();
                    LlenarDatos(egresos);
                    if (egresos.Editar())
                    {
                        HttpContext.Current.Response.Write("<SCRIPT>alert('Egreso Editado correctamente')</SCRIPT>");
                        Limpiar();
                    }
                    else
                    {
                        HttpContext.Current.Response.Write("<SCRIPT>alert('Error al editar')<SCRIPT/>");
                    }
                }
                else
                {

                        HttpContext.Current.Response.Write("<SCRIPT>alert('No existe ese Id')<SCRIPT/>");
                }
            }
        }
        public void Limpiar()
        {
            FechaTextBox.Text = string.Empty;
            MiembroIdDropDownList.ClearSelection();
            MontoTextBox.Text = string.Empty;
            TipoEgresoIdDropDownList.ClearSelection();
            CuentaIdDropDownList.ClearSelection();
            ObservacionTextBox.Text = string.Empty;
        }
        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();   
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            Egresos egreso = new Egresos();
            egreso.EgresoId = Convertir();
            if (egreso.Eliminar())
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Egreso eliminado')</SCRIPT>");
            }
            else
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Error al eliminar')</SCRIPT>");
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Egresos egreso = new Egresos();


            if(EgresoIdTextBox.Text.Length == 0)
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Debe de llenar el campo EgresoId')</SCRIPT>");
            }
            else
            {
                if (egreso.Buscar(Convertir()))
                {
                    FechaTextBox.Text = egreso.Fecha;
                    MontoTextBox.Text = egreso.Monto.ToString();
                    CuentaIdDropDownList.SelectedValue = egreso.CuentaId.ToString();
                    TipoEgresoIdDropDownList.SelectedValue = egreso.TipoEgresoId.ToString();
                    ObservacionTextBox.Text = egreso.Observacion;
                    MiembroIdDropDownList.SelectedValue = egreso.MiembroId.ToString();
                }
                else 
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Error al buscar')<SCRIPT/>");
                }
            }
           
        }

    }
}