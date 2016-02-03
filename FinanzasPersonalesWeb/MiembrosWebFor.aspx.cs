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

        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();

            DropDownUsuario.DataSource = usuario.Listado(" * ", "1=1", "");
            DropDownUsuario.DataTextField = "Nombres";
            DropDownUsuario.DataValueField = "UsuarioId";
            DropDownUsuario.DataBind();
            EstadoRbList.SelectedIndex = 1;
            AlertNotificationDiv.Visible = false;
            AlertNotificationBox.Text = "";
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        public void ValidarTextBoxVacio(TextBox TextoValidar)
        {
            if(TextoValidar.Text.Equals(string.Empty))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Por favor llenar los campos');", true);
                return;
            }
        }


        public void Limpiar()
        {
            TbMiembroId.Text = "";
            TbNombre.Text = "";
            EstadoRbList.ClearSelection();
            DropDownUsuario.ClearSelection();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            bool paso = false;
            Miembros miembro = new Miembros();

            miembro.MiembroId = (TbMiembroId.Text == "") ? 0 : Convert.ToInt16(TbMiembroId.Text);
            miembro.Nombre = TbNombre.Text;

            ValidarTextBoxVacio(TbNombre);
   
      
            if (EstadoRbList.SelectedIndex == 0)
            {
                miembro.esActivo = 1;
            }
            else
            {
                miembro.esActivo = 0;
            }

            if (DropDownUsuario.SelectedItem.Text == "")
            {
                miembro.UsuarioId = 0;
            }
            else
            {
                miembro.UsuarioId = Convert.ToInt16(DropDownUsuario.SelectedValue);
            }
            

            if (miembro.MiembroId == 0)
            {
                paso = miembro.Insertar();
            }

            else
            {
                paso = miembro.Editar();
            }

            if (paso == true)
            {

                if (!AlertNotificationDiv.Visible)
                    AlertNotificationDiv.Visible = true;
                if (!AlertNotificationBox.Visible)
                    AlertNotificationBox.Visible = true;

                AlertNotificationDiv.Attributes.Add("class", "col-md-12 col-xs-12 col-ms-12 alert alert-success alert-dismissable");
                AlertNotificationBox.Text = "Registro Guardado.";
                Limpiar();
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

            if (TbMiembroId.Text.Equals(string.Empty))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Por favor llenar debidamente el campo ID');", true);
                Limpiar();
                return;
            }

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
                    EstadoRbList.SelectedIndex = 0;
                }
                else
                {
                    EstadoRbList.SelectedIndex = 1;
                }
                DropDownUsuario.SelectedValue = miembro.UsuarioId.ToString();

            }
        }
    }
}