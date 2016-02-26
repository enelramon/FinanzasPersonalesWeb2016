using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace FinanzasPersonalesWeb.Registros
{
    public partial class rPersonas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TipoTelefonoDropDownList.DataSource = Enum.GetValues(typeof(TiposTelefonos));
                TipoTelefonoDropDownList.DataBind();
            }
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            
            Personas persona;//declarando la variable
                       
            if (Session["Persona"] == null) //si es la primera vez (cuando esta null)
                Session["Persona"] = new Personas(); //instanciar la persona dentro de la session
           

            persona = (Personas)Session["Persona"];//siempre asignamos la session a la variable local

            TiposTelefonos tipo;

            tipo = (TiposTelefonos)Enum.Parse(typeof(TiposTelefonos), TipoTelefonoDropDownList.SelectedValue);
     
            persona.AgregarTelefono( tipo , TelefonoTexBox.Text );

            Session["Persona"] = persona;//guardar en la session para que no se pierdan los datos de la persona.

            TelefonosGridView.DataSource = persona.Telefonos;
            TelefonosGridView.DataBind();

            TelefonoTexBox.Text = "";
            
        }

        protected void GuadarButton_Click(object sender, EventArgs e)
        {
            Personas persona;

            if (Session["Persona"] == null) //si es la primera vez (cuando esta null)
                Session["Persona"] = new Personas(); //instanciar la persona dentro de la session

            persona = (Personas)Session["Persona"];//siempre asignamos la session a la variable local

            persona.Nombre = NombreTextBox.Text;

           if ( persona.Insertar())
            {
                PersonaIdTextBox.Text = persona.PersonaId.ToString();

                Page.ClientScript.RegisterStartupScript(this.GetType(),
    "toastr_message", "toastr.success('There was an error', 'Error')", true);

            }
        }
    }
}