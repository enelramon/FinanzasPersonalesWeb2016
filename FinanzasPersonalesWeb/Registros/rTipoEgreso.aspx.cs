using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class TipoEgreso : System.Web.UI.Page
    {
        public void Limpiar()
        {
            TipoEgresoIdTextBox.Text = "";
            DescripcionTextBox.Text = "";
        }

        public int Validar()
        {
            if (DescripcionTextBox.Text.Length == 0)
            {
                MensajeLabel.Text = "Debe llenar la descripcion";
                return 1;
            }
            else
            {
                MensajeLabel.Text = "";
                return 0;
            }
        }
        public void LLenarDatos(TiposEgresos egreso)
        {

            int usuarioId;
            int.TryParse(UsuarioDropDownList.SelectedValue, out usuarioId);
            egreso.Descripcion = DescripcionTextBox.Text;
            if (EstadoRadioButtonList.SelectedIndex == 0)
                egreso.EsActivo = true;
            else
                egreso.EsActivo = false;
            egreso.UsuarioId = usuarioId;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            Usuarios usuario = new Usuarios();
            TiposEgresos egreso = new TiposEgresos();
            if (IsPostBack == false)
            {
                dt = usuario.Listado(" *", "1=1", "");
                UsuarioDropDownList.DataSource = dt;
                UsuarioDropDownList.DataTextField = "Nombre";
                UsuarioDropDownList.DataValueField = "UsuarioId";
                UsuarioDropDownList.DataBind();

                int idBuscado;
                if (Request.QueryString["idBuscado"] != null)
                {
                    idBuscado = ConvertirId(Request.QueryString["idBuscado"].ToString());

                    if (idBuscado > 0) //si es mayor que cero, buscar el registro
                    {
                        if (!egreso.Buscar(idBuscado))
                        {
                            Utilitarios.ShowToastr(this.Page, "Registro no encontrado.", "Error", "Error");
                            Limpiar();
                        }
                        else
                        {
                            LlenarCampos(egreso);
                        }

                    }
                }
            }
        }

        public int ConvertirId(string tipoEgresoId)
        {
            int id;
            int.TryParse(tipoEgresoId, out id);

            return id;
        }
        public void LlenarCampos(TiposEgresos egreso)
        {
            TipoEgresoIdTextBox.Text = egreso.TipoEgresoId.ToString();
            DescripcionTextBox.Text = egreso.Descripcion;
            if (egreso.EsActivo)
                EstadoRadioButtonList.SelectedIndex = 0;
            else
                EstadoRadioButtonList.SelectedIndex = 1;

            UsuarioDropDownList.SelectedValue = egreso.UsuarioId.ToString();
        }
        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            TiposEgresos egreso = new TiposEgresos();
            if (egreso.Buscar(ConvertirId(TipoEgresoIdTextBox.Text)))
            {
                LlenarCampos(egreso);
            }
            else
            {
                Utilitarios.ShowToastr(this.Page, "Error", "Error al buscar el tipo egreso", "Error");
            }
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            TiposEgresos egreso = new TiposEgresos();

            LLenarDatos(egreso);
            if (!TipoEgresoIdTextBox.Text.Equals(""))
            {
                egreso.TipoEgresoId = ConvertirId(TipoEgresoIdTextBox.Text);
                LLenarDatos(egreso);
                if (Validar() == 0 && egreso.Editar())
                {
                    Utilitarios.ShowToastr(this.Page, "Tipo egreso editado", "Correcto", "Success");
                    Limpiar();
                }
                else
                {
                    Utilitarios.ShowToastr(this.Page, "No se  pudo editar el tipo egreso", "Error", "Error");
                }
            }
            else if (TipoEgresoIdTextBox.Text.Equals(""))
            {
                if (Validar() == 0 && egreso.Insertar())
                {
                    Utilitarios.ShowToastr(this.Page, "Tipo egreso guardado", "Correcto", "Success");
                    Limpiar();
                }
                else
                {
                    Utilitarios.ShowToastr(this.Page, "No se  pudo guardar el tipo egreso", "Error", "Error");
                }
            }

        }

        protected void ElimanarButton_Click(object sender, EventArgs e)
        {
            TiposEgresos egreso = new TiposEgresos();


            if (!TipoEgresoIdTextBox.Equals(""))
            {
                egreso.TipoEgresoId = ConvertirId(TipoEgresoIdTextBox.Text);
                if (egreso.Eliminar())
                {
                    Utilitarios.ShowToastr(this.Page, "Tipo egreso eliminado", "Correcto", "Success");
                    Limpiar();
                }
            }
            else
            {
                Utilitarios.ShowToastr(this.Page, "No se pudo eliminar el tipo egreso", "Error", "Error");
            }
        }
    }
}