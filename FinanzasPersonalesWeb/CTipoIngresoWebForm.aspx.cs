using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class CTipoIngresoWebForm : System.Web.UI.Page
    {
        TiposIngresos TipoIngreso = new TiposIngresos();

        protected void Page_Load(object sender, EventArgs e)
        {
            ConsultaGridView.DataSource = TipoIngreso.Listado(" * ", " 1=1 ", "");
            ConsultaGridView.DataBind();
            if (ConsultaGridView.Rows.Count == 0)
            {
                HttpContext.Current.Response.Write("<Script>alert('No hay Registro')</Script>");
            }
        }

        public int ValidarIdEntero(string IdTextBox)
        {
            int Id = 0;
            if (IdTextBox.Length > 0)
            {
                bool result = Int32.TryParse(IdTextBox, out Id);
            }
            else
            {
                return 0;
            }
            return Id;
        }

        public void Limpiar()
        {
            CodigoTextBox.Text = "";
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            if (ValidarIdEntero(CodigoTextBox.Text) > 0)
            {
                if (TipoIngreso.Buscar(ValidarIdEntero(CodigoTextBox.Text)))
                {
                    ConsultaGridView.DataSource = TipoIngreso.Listado(" * ", " TipoIngresoId = " + CodigoTextBox.Text, "");
                    ConsultaGridView.DataBind();

                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<Script>alert('No hay Registro')</Script>");

                    Limpiar();
                }
            }
            else
            {
                HttpContext.Current.Response.Write("<Script>alert('Ingrese un numero Valido')</Script>");

                Limpiar();
            }
        }
    }
}