using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class Cuentas : System.Web.UI.Page
    {
        Cuentas Cuenta = new Cuentas();

        protected void Page_Load(object sender, EventArgs e)
        {

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
            CuentasTextBox.Text = "";
            DescripcionTextBox.Text = "";
            CuentaTextBox.Text = "";
            PorcientoTextBox.Text = "";
        }

        public bool LlenarDatos()
        {
            bool retorno = true;

            Cuenta.Descripcion = DescripcionTextBox.Text;
            if (EstadoRadioButtonList.SelectedIndex == 1)
            {
                TipodeIngreso.EsActivo = true;
            }
            else
            {
                TipodeIngreso.EsActivo = false;
            }
            TipodeIngreso.UsuarioId = 0;

            return retorno;

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            if (ValidarIdEntero(TipoIngresoTextBox.Text) > 0)
            {
                if (TipodeIngreso.Buscar(ValidarIdEntero(TipoIngresoTextBox.Text)))
                {
                    DescripcionTextBox.Text = TipodeIngreso.Descripcion.ToString();
                    if (TipodeIngreso.EsActivo == true)
                    {
                        EstadoRadioButtonList.SelectedIndex = 1;
                    }
                    else
                    {
                        EstadoRadioButtonList.SelectedIndex = 2;
                    }
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

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            if (LlenarDatos())
            {
                if (TipodeIngreso.Insertar())
                {
                    HttpContext.Current.Response.Write("<Script>alert('Se Guardo Correctamente')</Script>");

                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<Script>alert('Error al Guardar')</Script>");
                }
            }
            else
            {
                HttpContext.Current.Response.Write("<Script>alert('Faltan Datos')</Script>");
            }
        }

        protected void ModificarButton_Click(object sender, EventArgs e)
        {
            if (ValidarIdEntero(TipoIngresoTextBox.Text) > 0)
            {
                if (LlenarDatos())
                {
                    TipodeIngreso.TipoIngresoId = ValidarIdEntero(TipoIngresoTextBox.Text);

                    if (TipodeIngreso.Editar())
                    {
                        HttpContext.Current.Response.Write("<Script>alert('Se Modifico Correctamente')</Script>");

                        Limpiar();
                    }
                    else
                    {
                        HttpContext.Current.Response.Write("<Script>alert('Error al Modificar')</Script>");
                    }
                }
                else
                {
                    HttpContext.Current.Response.Write("<Script>alert('Faltan Datos')</Script>");
                }
            }
            else
            {
                HttpContext.Current.Response.Write("<Script>alert('No hay Registro')</Script>");
                Limpiar();
            }
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            if (ValidarIdEntero(TipoIngresoTextBox.Text) > 0)
            {
                TipodeIngreso.TipoIngresoId = ValidarIdEntero(TipoIngresoTextBox.Text);

                if (TipodeIngreso.Eliminar())
                {
                    HttpContext.Current.Response.Write("<Script>alert('Se Elimino Correctamente')</Script>");

                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<Script>alert('Error al Eliminar')</Script>");
                }
            }
            else
            {
                HttpContext.Current.Response.Write("<Script>alert('No hay Registro')</Script>");
                Limpiar();
            }
        }
    }
}