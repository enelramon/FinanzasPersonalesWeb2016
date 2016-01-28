using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using BLL;


namespace FinanzasPersonalesWeb
{
    public partial class MiembrosWebFor : System.Web.UI.Page
    {
        Miembros m = new Miembros();
        int IdC;

        // Mensaje --->   ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El Codigo No Puede Estar en Blanco');", true); 

        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();

            DropDownUsuario.DataSource = usuario.Listado(" * ", "1=1", "");
            DropDownUsuario.DataTextField = "Nombres";
            DropDownUsuario.DataValueField = "UsuarioId";
            DropDownUsuario.DataBind();
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        public void Limpiar()
        {
            TbMiembroId.Text = "";
            TbNombre.Text = "";
            RbActivo.Checked = false;
            RbInactivo.Checked = false;
            DropDownUsuario.ClearSelection();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            bool paso = false;
            Miembros miembro = new Miembros();

            miembro.MiembroId = (TbMiembroId.Text == "") ? 0 : Convert.ToInt16(TbMiembroId);
            miembro.Nombre = TbNombre.Text;

            if (RbActivo.Checked == true)
            {
                miembro.esActivo = 1;
            }
            else
            {
                miembro.esActivo = 0;
            }

            miembro.UsuarioId = Convert.ToInt16(DropDownUsuario.SelectedValue);

            if (miembro.MiembroId == 0)
            {
                paso = miembro.Insertar();
            }

            else
            {
                paso = miembro.Editar();
            }

            if (paso)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro  Guardado.');", true);
            }
        }

        public int Convertir()
        {
            int id;
            int.TryParse(TbMiembroId.Text, out id);

            return id;
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            if (TbMiembroId.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El ID no debe estar vacío.');", true);
            }

            Miembros miembro = new Miembros();
            miembro.MiembroId = Convertir();
            if (miembro.Eliminar())
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registro eliminado exitosamente.');", true);
            }
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            Miembros miembro = new Miembros();

            if (!(miembro.Buscar(Convert.ToInt16(TbMiembroId.Text))))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No se encontro ningún registro con ese ID.');", true);
                Limpiar();
                return;
            }

            if (!TbMiembroId.Text.Equals(string.Empty))
            {
                int.TryParse(TbMiembroId.Text, out IdC);
                miembro.Buscar(IdC);
                TbNombre.Text = miembro.Nombre;
                if (miembro.esActivo == 1)
                {
                    RbActivo.Checked = true;
                }
                else
                {
                    RbInactivo.Checked = true;
                }
                DropDownUsuario.SelectedValue = miembro.UsuarioId.ToString();

            }
        }
    }
}