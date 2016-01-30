using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Usuarios Usuario = new Usuarios();
            Boolean paso = false;
            Boolean control1, control2 = false;


            if (NombreTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            else if (ApellidoTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            else if (UsuarioTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            else if (PassTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            else if (EmailTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            if (AceptarCheckBox.Checked == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe aceptar los Terminos para poder continuar.');", true);
            }
            else {

                control1 = Usuario.ValidarRegistroUsuario("'" + UsuarioTextBox.Text + "'");
                control2 = Usuario.ValidarRegistroCorreo("'" + EmailTextBox.Text + "'");

                if (control1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El Usuario ya Existe.');", true);
                    UsuarioTextBox.Focus();
                }
                else if (control2)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El Correo ya Existe.');", true);
                    UsuarioTextBox.Focus();

                }
                else
                {
                    Usuario.Nombre = NombreTextBox.Text;
                    Usuario.Apellidos = ApellidoTextBox.Text;
                    Usuario.TipoUsuarioId = 1;
                    Usuario.Usuario = UsuarioTextBox.Text;
                    Usuario.Password = PassTextBox.Text;
                    Usuario.Email = EmailTextBox.Text;
                }

                
            }
            if (paso)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Transaccion Exitosa.');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ha habido un error, por favor vuelva a intentar.');", true);
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