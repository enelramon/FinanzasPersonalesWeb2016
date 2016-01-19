using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class TipodeIngreso : System.Web.UI.Page
    {
        TiposIngresos TipoIngreso = new TiposIngresos();

        public void InicializarUsuarios()
        {
            //UsuarioDropDownList.DataSource = Usuarios.Listado(" * ", " 1=1 ", "");
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
            TipoIngresoTextBox.Text = "";
            DescripcionTextBox.Text = "";
            EstadoRadioButtonList.ClearSelection();
            UsuarioDropDownList.ClearSelection();
        }

        public bool LlenarDatos()
        {
            bool retorno = true;

            TipoIngreso.Descripcion = DescripcionTextBox.Text;
            if (EstadoRadioButtonList.SelectedIndex == 1)
            {
                TipoIngreso.EsActivo = true;
            }
            else
            {
                TipoIngreso.EsActivo = false;
            }
            TipoIngreso.UsuarioId = 0;

            return retorno;
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            if (LlenarDatos())
            {
                if (TipoIngreso.Insertar())
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
                    TipoIngreso.TipoIngresoId = ValidarIdEntero(TipoIngresoTextBox.Text);

                    if (TipoIngreso.Editar())
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
                TipoIngreso.TipoIngresoId = ValidarIdEntero(TipoIngresoTextBox.Text);

                if (TipoIngreso.Eliminar())
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

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            if (ValidarIdEntero(TipoIngresoTextBox.Text) > 0)
            {
                if (TipoIngreso.Buscar(ValidarIdEntero(TipoIngresoTextBox.Text)))
                {
                    DescripcionTextBox.Text = TipoIngreso.Descripcion.ToString();
                    if (TipoIngreso.EsActivo == true)
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
    }
}