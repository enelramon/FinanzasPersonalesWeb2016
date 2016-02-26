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
            AlertNotificationDiv.Visible = false;
            AlertNotificationBox.Text = "";
        }
        protected void Login1_Authenticate(Object sender, EventArgs e)
        {
            Usuarios Usuario = new Usuarios();
            Boolean paso = false;


            Usuario.ValidarUsuario(UsuarioTextBox.Text, ContrasenaTextBox.Text);

            if (paso)
            {
                FormsAuthentication.RedirectFromLoginPage(Usuario.Usuario, RememberMeCheckBox.Checked);
            }
            else
            {
                if (!AlertNotificationDiv.Visible)
                    AlertNotificationDiv.Visible = true;
                if (!AlertNotificationBox.Visible)
                    AlertNotificationBox.Visible = true;

                AlertNotificationDiv.Attributes.Add("class", "col-md-12 col-xs-12 col-ms-12 alert alert-danger alert-dismissable");
                AlertNotificationBox.Text = "Ha habido un error en la solicitud, por favor, intentelo mas tarde.";
            }
          }
        }
    }
