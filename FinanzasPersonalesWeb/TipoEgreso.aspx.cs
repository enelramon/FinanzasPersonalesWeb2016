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
            dt = usuario.Listado(" *","1=1","");
            UsuarioDropDownList.DataSource = dt;
            UsuarioDropDownList.DataValueField = "UsuarioId";
            UsuarioDropDownList.DataTextField = "Nombres";
            UsuarioDropDownList.DataBind();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            TiposEgresos egreso = new TiposEgresos();

            int idBuscado;
            int.TryParse(TipoEgresoIdTextBox.Text, out idBuscado);
            egreso.Buscar(idBuscado);
            TipoEgresoIdTextBox.Text = egreso.TipoEgresoId.ToString();
            DescripcionTextBox.Text = egreso.Descripcion;
            if (egreso.EsActivo)
                EstadoRadioButtonList.SelectedIndex = 0;
            else
                EstadoRadioButtonList.SelectedIndex = 1;

           // UsuarioDropDownList.SelectedValue = egreso.UsuarioId;
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
                if(egreso.Editar())
                    Limpiar();
            }
            else if(TipoEgresoIdTextBox.Text.Equals(""))
            {
                if (egreso.Insertar())
                    Limpiar();
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
                    Limpiar();
                }
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {

        }
    }
}