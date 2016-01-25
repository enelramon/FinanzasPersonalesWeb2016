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

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}