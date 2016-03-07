using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Web.Services;

namespace FinanzasPersonalesWeb
{
    public partial class EgresosWebForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            int Id;
            if (IsPostBack == false)
            {
                LlenarDropDownList();

                if (Request.QueryString["Id"] != null)
                {
                    Id = Utilitarios.ToInt(Request.QueryString["Id"].ToString());

                    if (Id > 0)
                    {
                        Egresos egreso = new Egresos();
                        if (!egreso.Buscar(Id))
                        {
                            Utilitarios.ShowToastr(this, "Registro no encontrado", "Error", "Danger");
                            Limpiar();
                        }
                        else
                        {
                            EgresoIdTextBox.Text = Id.ToString();
                            DevolverDatos(egreso);
                        }

                    }
                }
            }

        }
        public void LlenarDropDownList()
        {
            Cuentas cuenta = new Cuentas();
            TiposEgresos tipoEgreso = new TiposEgresos();
            Miembros miembro = new Miembros();

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
        public static void ShowToastr(Page page, string message, string title, string type)
        {
            page.ClientScript.RegisterStartupScript(page.GetType(), "toastr_message",
                  String.Format("toastr.{0}('{1}', '{2}');", type, message, title), addScriptTags: true);
        }

        [WebMethod]
        public static string[] GetSugestions(string filtro)
        {
            List<string> sugestions = new List<string>();

            sugestions = Egresos.ObservacionesAnteriores(filtro);

            return sugestions.ToArray();
        }

        public int MiError()
        {
            int contador = 0;

            if(MontoTextBox.Text == "")
            {
                ShowToastr(this,"No puede dejar el monto vacio","Alerta","warning");
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
            egreso.Observacion = ObservacionesTextBox.Text;
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
        
        public void Limpiar()
        {
            FechaTextBox.Text = string.Empty;
            MiembroIdDropDownList.ClearSelection();
            MontoTextBox.Text = string.Empty;
            TipoEgresoIdDropDownList.ClearSelection();
            CuentaIdDropDownList.ClearSelection();
            ObservacionesTextBox.Text = string.Empty;
        }

        protected void NuevoButton_Click1(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuadarButton_Click(object sender, EventArgs e)
        {
            Egresos egresos = new Egresos();
            if (EgresoIdTextBox.Text.Length == 0)
            {
                LlenarDatos(egresos);
                if (MiError() == 0 && egresos.Insertar())
                {
                    ShowToastr(this, "Egreso gurdado correctamente", "Mensaje", "success");
                    Limpiar();
                }
                else
                {
                    ShowToastr(this, "Error al guardar","Error","danger");
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
                        ShowToastr(this,"Egreso editado correctamente","Mensaje","success");
                        Limpiar();
                    }
                    else
                    {
                        ShowToastr(this, "Error al editar", "Error", "danger");
                    }
                }
                else
                {

                    ShowToastr(this, "No existe ese ID", "Alerta", "warning");
                }
            }
        }

        protected void EliminarButton_Click1(object sender, EventArgs e)
        {
            Egresos egreso = new Egresos();
            egreso.EgresoId = Convertir();
            if(EgresoIdTextBox.Text.Length == 0)
            {
                ShowToastr(this, "Debe de especificar el ID","Alerta","warning");
            }
            if (egreso.Eliminar())
            {
                ShowToastr(this, "Egreso eliminado", "Mensaje", "success");
            }
            else
            {
                ShowToastr(this, "Error al eliminar", "Error", "danger");
            }
        }

        public void DevolverDatos(Egresos egreso)
        {
            FechaTextBox.Text = egreso.Fecha;
            MontoTextBox.Text = egreso.Monto.ToString();
            CuentaIdDropDownList.SelectedValue = egreso.CuentaId.ToString();
            TipoEgresoIdDropDownList.SelectedValue = egreso.TipoEgresoId.ToString();
            ObservacionesTextBox.Text = egreso.Observacion;
            MiembroIdDropDownList.SelectedValue = egreso.MiembroId.ToString();
        }
        protected void BuscarButton_Click1(object sender, EventArgs e)
        {
            Egresos egreso = new Egresos();


            if (EgresoIdTextBox.Text.Length == 0)
            {
                ShowToastr(this, "Debe especificar el ID", "Alerta", "warning");
            }
            else
            {
                if (egreso.Buscar(Convertir()))
                {

                    DevolverDatos(egreso);
                }
                else 
                {
                    ShowToastr(this, "Error al buscar", "Error", "danger");
                }
            }
        }
    }
}