using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Configuration;
using System.Web.Security;

namespace FinanzasPersonalesWeb
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_Authenticate(Object sender, EventArgs e)
        {
            Usuarios Usuario = new Usuarios();
            Boolean paso = false;


            paso = Usuario.ValidarUsuario(UsuarioTextBox.Text, ContrasenaTextBox.Text);

            if (paso)
            {
                FormsAuthentication.RedirectFromLoginPage(Usuario.Usuario, RememberMeCheckBox.Checked);
            }
            else
            {
                Utilitarios.ShowToastr(this.Page, "Ha ocurrido un Error.", "Error", "Error");
            }
          }
        }
    }
