using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using BLL;


namespace FinanzasPersonalesWeb.Registros
{
    public partial class MiembrosWebFor : System.Web.UI.Page
    {
        Miembros m = new Miembros();
        int IdC;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Usuarios usuario = new Usuarios();

                DropDownUsuario.DataSource = usuario.Listado(" * ", "1=1", "");
                DropDownUsuario.DataTextField = "Nombre";
                DropDownUsuario.DataValueField = "UsuarioId";
                DropDownUsuario.DataBind();
                AlertNotificationDiv.Visible = false;
                AlertNotificationBox.Text = "";

            }
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        public void ValidarTextBoxVacio(TextBox TextoValidar)
        {
            if (TextoValidar.Text.Equals(string.Empty))
            {
                Utilitarios.ShowToastr(this.Page, "Favor llenar debidamente los campos.", "Error", "Error");
                return;
            }
        }


        public void Limpiar()
        {
            TbMiembroId.Text = "";
            TbNombre.Text = "";
            TbApellido.Text = "";
            TbParentesco.Text = "";
            EstadoRbList.ClearSelection();
            DropDownUsuario.ClearSelection();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            bool paso = false;
            Miembros miembro = new Miembros();

            ValidarTextBoxVacio(TbNombre);
            ValidarTextBoxVacio(TbApellido);
            ValidarTextBoxVacio(TbParentesco);

            miembro.MiembroId = (TbMiembroId.Text == "") ? 0 : Convert.ToInt16(TbMiembroId.Text);
            miembro.Nombre = TbNombre.Text;
            miembro.Apellidos = TbApellido.Text;
            miembro.Parentesco = TbParentesco.Text;


            if (DropDownUsuario.SelectedItem.Text == "")
            {
                miembro.UsuarioId = 0;
            }
            else
            {
                miembro.UsuarioId = Convert.ToInt16(DropDownUsuario.SelectedValue);
            }

            if (EstadoRbList.SelectedIndex == 0)
            {
                miembro.esActivo = 1;

            }
            if (EstadoRbList.SelectedIndex == 1)
            {
                miembro.esActivo = 0;
            }


            if (TbMiembroId.Text == "")
            {
                paso = miembro.Insertar();
            }
            else
            {
                paso = miembro.Editar();
            }

            if (paso)
            {
                Utilitarios.ShowToastr(this.Page, "Transaccion Exitosa.", "Felicidades", "Success");
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
                Utilitarios.ShowToastr(this.Page, "E ID No debe estar vacío.", "Error", "Error");
            }

            Miembros miembro = new Miembros();
            miembro.MiembroId = Convertir();
            if (miembro.Eliminar())
            {
                Utilitarios.ShowToastr(this.Page, "Registro Eliminado Exitosamente.", "Felicidades", "Success");
            }
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            Miembros miembro = new Miembros();

            if (TbMiembroId.Text.Equals(string.Empty))
            {
                Utilitarios.ShowToastr(this.Page, "Favor llenar debidamente el campo ID.", "Error", "Error");
                Limpiar();
                return;
            }

            if (!(miembro.Buscar(Convert.ToInt16(TbMiembroId.Text))))
            {
                Utilitarios.ShowToastr(this.Page, "No se encontro ningun registro con ese ID.", "Error", "Error");
                Limpiar();
                return;
            } 

            if (!TbMiembroId.Text.Equals(string.Empty))
            {
                int.TryParse(TbMiembroId.Text, out IdC);

                miembro.Buscar(IdC);
                TbNombre.Text = miembro.Nombre;
                TbApellido.Text = miembro.Apellidos;
                TbParentesco.Text = miembro.Parentesco;


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