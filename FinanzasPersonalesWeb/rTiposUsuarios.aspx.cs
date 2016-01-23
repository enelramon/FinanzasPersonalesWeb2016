using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class rTiposUsuarios : System.Web.UI.Page
    {

        public void LlenarClase(ref TiposUsuarios TipoUsuario)
        {
            TipoUsuario.IdTipoUsuario = (CodigoTextBox.Text == "") ? 0 : Convert.ToInt16(CodigoTextBox.Text);
            TipoUsuario.Descripcion = DescripcionTextBox.Text;
        }
        public void LlenarCampos(TiposUsuarios TipoUsuario)
        {
            CodigoTextBox.Text = Convert.ToString(TipoUsuario.IdTipoUsuario);
            DescripcionTextBox.Text = TipoUsuario.Descripcion;
        }
        public void Limpiar()
        {
            CodigoTextBox.Text = "";
            DescripcionTextBox.Text = "";
        }
        public void Habilitar()
        {
            CodigoTextBox.Enabled = !CodigoTextBox.Enabled;
            DescripcionTextBox.Enabled = !DescripcionTextBox.Enabled;
            BtnBuscar.Enabled = !BtnBuscar.Enabled;
            BtnNuevo.Enabled = !BtnNuevo.Enabled;
            BtnCancelar.Enabled = !BtnCancelar.Enabled;
            BtnModificar.Enabled = !BtnModificar.Enabled;
            BtnGuardar.Enabled = !BtnGuardar.Enabled;
            BtnEliminar.Enabled = !BtnEliminar.Enabled;
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (CodigoTextBox.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El Codigo No Puede Estar Basio.');", true);
                return;

            }

            TiposUsuarios TipoUsuario = new TiposUsuarios();
            if (!(TipoUsuario.Buscar(Convert.ToInt16(CodigoTextBox.Text))))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro No Encontrado.');", true);
                Limpiar();
                return;
            }
            
            LlenarCampos(TipoUsuario);
        }


        protected void BtnNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
            Habilitar();
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            if (CodigoTextBox.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El Codigo No Puede Estar Basio.');", true);
                return;

            }
            TiposUsuarios TipoUsuario = new TiposUsuarios();

            if (!(TipoUsuario.Buscar(Convert.ToInt16(CodigoTextBox.Text))))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro No Encontrado.');", true);
                Limpiar();
                return;
            }

            LlenarCampos(TipoUsuario);
            Habilitar();

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
            Habilitar();

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            bool Paso = false;
            TiposUsuarios TipoUsuario = new TiposUsuarios();
            LlenarClase(ref TipoUsuario);

            if (TipoUsuario.IdTipoUsuario == 0)
            {
                Paso = TipoUsuario.Insertar();
            }
            else
            {
                Paso = TipoUsuario.Editar();
            }

            if (Paso)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro  Guardado.');", true);
                LlenarCampos(TipoUsuario);
                Habilitar();
            }

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            if (CodigoTextBox.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El Codigo No Puede Estar Basio.');", true);
                return;

            }
            TiposUsuarios TipoUsuario = new TiposUsuarios();

            if (!(TipoUsuario.Buscar(Convert.ToInt16(CodigoTextBox.Text))))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro No Encontrado.');", true);
                Limpiar();
                return;
            }

            if (TipoUsuario.Eliminar())
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro  Eliminado.');", true);

            }
        }
    }
}