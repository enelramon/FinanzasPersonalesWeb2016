using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.Registros
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void LlenarClase( Usuarios Usuario)
        {
            Usuario.Nombre = NombreTextBox.Text;
            Usuario.Apellidos = ApellidoTextBox.Text;
            Usuario.TipoUsuarioId = 1;
            Usuario.Usuario = UsuarioTextBox.Text;
            Usuario.Password = PassTextBox.Text;
            Usuario.Email = EmailTextBox.Text;
        }
        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Usuarios Usuario = new Usuarios();
            Boolean paso = false;
            Boolean control1, control2 = false;
            LlenarClase(Usuario);

            if (PassTextBox.Text != RptPassTextBox.Text)
            {
                Utilitarios.ShowToastr(this.Page, "Las contraseñas no coinciden.", "Advertencia", "Warning");
            }
            if (NombreTextBox.Text.Trim().Length == 0)
            {
                Utilitarios.ShowToastr(this.Page, "Debe llenar los campos faltantes.", "Advertencia", "Warning");
            }
            else if (ApellidoTextBox.Text.Trim().Length == 0)
            {
                Utilitarios.ShowToastr(this.Page, "Debe llenar los campos faltantes.", "Advertencia", "Warning");
            }
            else if (UsuarioTextBox.Text.Trim().Length == 0)
            {
                Utilitarios.ShowToastr(this.Page, "Debe llenar los campos faltantes.", "Advertencia", "Warning");
            }
            else if (PassTextBox.Text.Trim().Length == 0)
            {
                Utilitarios.ShowToastr(this.Page, "Debe llenar los campos faltantes.", "Advertencia", "Warning");
            }
            else if (EmailTextBox.Text.Trim().Length == 0)
            {
                Utilitarios.ShowToastr(this.Page, "Debe llenar los campos faltantes.", "Advertencia", "Warning");
            }

            else {

                control1 = Usuario.ValidarRegistroUsuario("'" + UsuarioTextBox.Text + "'");
                control2 = Usuario.ValidarRegistroCorreo("'" + EmailTextBox.Text + "'");

                if (control1)
                {
                    Utilitarios.ShowToastr(this.Page, "Este usuario ya existe.", "Error", "Error");
                }
                else if (control2)
                {
                    Utilitarios.ShowToastr(this.Page, "Este correo ya existe.", "Error", "Error");

                }

                else
                {
                    Usuario.Nombre = NombreTextBox.Text;
                    Usuario.Apellidos = ApellidoTextBox.Text;
                    Usuario.TipoUsuarioId = 1;
                    Usuario.Usuario = UsuarioTextBox.Text;
                    Usuario.Password = PassTextBox.Text;
                    Usuario.Email = EmailTextBox.Text;

                    paso = Usuario.Insertar();
                }

                if (paso)
                {
                    Utilitarios.ShowToastr(this.Page, "Transaccion Exitosa.", "Felicidades", "Success");
                }
                else
                {

                }

            }
        }
        
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/rUsuarios.aspx");
        }
    }
}