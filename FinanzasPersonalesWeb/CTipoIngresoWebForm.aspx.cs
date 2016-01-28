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
            LlenarGrid(" 1=1 ");

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

        void LlenarGrid(string Condicion)
        {
            ConsultaGridView.DataSource = TipoIngreso.Listado(" * ", Condicion, "");
            ConsultaGridView.DataBind();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            string Condiciones = "";

            if (CodigoTextBox.Text.Length > 0)
            {
                    if (TipoIngresoDropDownList.SelectedIndex == 0)
                    {
                        if (ValidarIdEntero(CodigoTextBox.Text) == 0)
                        {
                            Condiciones = " 1=1 ";
                        }
                        else
                        {
                            Condiciones = " TipoIngresoId = " + CodigoTextBox.Text;
                        }                       
                    }

                    if (TipoIngresoDropDownList.SelectedIndex == 1)
                    {
                        Condiciones = " Descripcion = '" + CodigoTextBox.Text + "' ";
                    }

                    if (TipoIngresoDropDownList.SelectedIndex == 2)
                    {
                        if (ValidarIdEntero(CodigoTextBox.Text) == 0)
                        {
                            Condiciones = " 1=1 ";
                        }
                        else
                        {
                            Condiciones = " EsActivo = " + CodigoTextBox.Text;
                        }
                    }

                    if (TipoIngresoDropDownList.SelectedIndex == 3)
                    {
                        if (ValidarIdEntero(CodigoTextBox.Text) == 0)
                        {
                            Condiciones = " 1=1 ";
                        }
                        else
                        {
                            Condiciones = " UsuarioId = " + CodigoTextBox.Text;
                        }
                    }

                    LlenarGrid(Condiciones);

                    if (ConsultaGridView.Rows.Count == 0)
                    {
                        HttpContext.Current.Response.Write("<Script>alert('No hay Registro')</Script>");
                        LlenarGrid(" 1=1 ");                       
                    }

                    Limpiar();
            }
            else
            {
                HttpContext.Current.Response.Write("<Script>alert('Ingrese un caracter valido')</Script>");

                Limpiar();
            }
        }
    }
}