using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class TipoIngreso : System.Web.UI.Page
    {
        TiposIngresos TipodeIngreso = new TiposIngresos();
        Usuarios Usuario = new Usuarios();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                UsuarioDropDownList.DataSource = Usuario.Listado(" * ", "1=1", "");
                UsuarioDropDownList.DataTextField = "Nombres";
                UsuarioDropDownList.DataValueField = "UsuarioId";
                UsuarioDropDownList.DataBind();
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
            TipoIngresoTextBox.Text = "";
            DescripcionTextBox.Text = "";
            EstadoRadioButtonList.SelectedIndex = 0;
            UsuarioDropDownList.ClearSelection();
        }

        public bool LlenarDatos()
        {
            bool retorno = true;

            if (DescripcionTextBox.Text.Length > 0)
            {
                TipodeIngreso.Descripcion = DescripcionTextBox.Text;

                if (EstadoRadioButtonList.SelectedIndex == 1)
                {
                    TipodeIngreso.EsActivo = true;
                }
                else
                {
                    TipodeIngreso.EsActivo = false;
                }

                TipodeIngreso.UsuarioId = ValidarIdEntero(UsuarioDropDownList.SelectedValue);

                retorno = true;
            }
            else
            {
                retorno = false;
            }

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

                    if (TipodeIngreso.UsuarioId == 0)
                    {
                        HttpContext.Current.Response.Write("<Script>alert('El Usuario no puede ser Nulo o Cero')</Script>");
                    }
                    else
                    {
                        UsuarioDropDownList.SelectedValue = TipodeIngreso.UsuarioId.ToString();
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
                if (TipodeIngreso.Buscar(ValidarIdEntero(TipoIngresoTextBox.Text)))
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
                if (TipodeIngreso.Buscar(ValidarIdEntero(TipoIngresoTextBox.Text)))
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
            else
            {
                HttpContext.Current.Response.Write("<Script>alert('No hay Registro')</Script>");
                Limpiar();
            }
        }
    }
}