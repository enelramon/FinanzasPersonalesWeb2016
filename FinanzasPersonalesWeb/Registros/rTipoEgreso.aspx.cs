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

        public int  Validar()
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
            if (IsPostBack == false)
            {
                dt = usuario.Listado(" *", "1=1", "");
                UsuarioDropDownList.DataSource = dt;
                UsuarioDropDownList.DataTextField = "Nombre";
                UsuarioDropDownList.DataValueField = "UsuarioId";
                UsuarioDropDownList.DataBind();
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            TiposEgresos egreso = new TiposEgresos();

            int idBuscado;
            int.TryParse(TipoEgresoIdTextBox.Text, out idBuscado);
            if (egreso.Buscar(idBuscado))
            {
                TipoEgresoIdTextBox.Text = egreso.TipoEgresoId.ToString();
                DescripcionTextBox.Text = egreso.Descripcion;
                if (egreso.EsActivo)
                    EstadoRadioButtonList.SelectedIndex = 0;
                else
                    EstadoRadioButtonList.SelectedIndex = 1;

                UsuarioDropDownList.SelectedValue = egreso.UsuarioId.ToString();
            }
            else
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Error al buscar el tipo egreso')</SCRIPT>");
            }
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            TiposEgresos egreso = new TiposEgresos();
            int id;
            int.TryParse(TipoEgresoIdTextBox.Text, out id);
            LLenarDatos(egreso);
            if (!TipoEgresoIdTextBox.Text.Equals(""))
            {
                egreso.TipoEgresoId = id;
                LLenarDatos(egreso);
                if (Validar() == 0 && egreso.Editar())
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Tipo egreso editado')</SCRIPT>");
                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Error al editar el tipo egreso')</SCRIPT>");
                }
            }
            else if (TipoEgresoIdTextBox.Text.Equals(""))
            {
                if (Validar() == 0 && egreso.Insertar())
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Tipo egreso guardado')</SCRIPT>");
                    Limpiar();                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Error al guardar el tipo egreso')</SCRIPT>");
                }
            }
           
        }

        protected void ElimanarButton_Click(object sender, EventArgs e)
        {
            TiposEgresos egreso = new TiposEgresos();

            int id;
            int.TryParse(TipoEgresoIdTextBox.Text, out id);
            egreso.TipoEgresoId = id;
            if (!TipoEgresoIdTextBox.Equals(""))
                if (egreso.Eliminar())
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Tipo egreso eliminado')</SCRIPT>");
                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Error al eliminar el tipo egreso')</SCRIPT>");
                }
        }
    }
}