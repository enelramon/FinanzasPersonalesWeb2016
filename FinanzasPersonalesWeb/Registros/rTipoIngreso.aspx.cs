using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.Registros
{
    public partial class rTipoIngreso : System.Web.UI.Page
    {
        TiposIngresos TipodeIngreso = new TiposIngresos();
        Usuarios Usuario = new Usuarios();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                UsuarioDropDownList.DataSource = Usuario.Listado(" * ", "1=1", "");
                UsuarioDropDownList.DataTextField = "Nombre";
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
                        Utilitarios.ShowToastr(this.Page, "El Usuario no puede ser Nulo o Cero", "Error", "Error");
                    }
                    else
                    {
                        UsuarioDropDownList.SelectedValue = TipodeIngreso.UsuarioId.ToString();
                    }
                }
                else
                {
                    Utilitarios.ShowToastr(this.Page, "No hay Registro", "Error", "Error");
                    Limpiar();
                }
            }
            else
            {
                Utilitarios.ShowToastr(this.Page, "Ingrese un numero Valido", "Error", "Error");
                Limpiar();
            }
    }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            if (ValidarIdEntero(TipoIngresoTextBox.Text) > 0)
            {
                    if (LlenarDatos())
                    {
                        TipodeIngreso.TipoIngresoId = ValidarIdEntero(TipoIngresoTextBox.Text);

                        if (TipodeIngreso.Editar())
                        {
                            Utilitarios.ShowToastr(this.Page, "Se Modifico", "Felicidades", "Success");
                            Limpiar();
                        }
                        else
                        {
                            Utilitarios.ShowToastr(this.Page, "No Modifico", "Error", "Error");
                        }
                    }
                    else
                    {
                        Utilitarios.ShowToastr(this.Page, "Faltan Datos", "Error", "Error");
                    }
            }
            else
            {
                if (LlenarDatos())
                {
                    if (TipodeIngreso.Insertar())
                    {
                        Utilitarios.ShowToastr(this.Page, "Se Guardo", "Felicidades", "Success");
                        Limpiar();
                    }
                    else
                    {
                        Utilitarios.ShowToastr(this.Page, "No Guardo", "Error", "Error");
                    }
                }
                else
                {
                    Utilitarios.ShowToastr(this.Page, "Faltan Datos", "Error", "Error");
                }
            }
        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
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
                        Utilitarios.ShowToastr(this.Page, "Se Elmino", "Felicidades", "Success");

                        Limpiar();
                    }
                    else
                    {
                        Utilitarios.ShowToastr(this.Page, "No Elimino", "Error", "Error");
                    }
                }
                else
                {
                    Utilitarios.ShowToastr(this.Page, "No hay Registro", "Error", "Error");
                    Limpiar();
                }
            }
            else
            {
                Utilitarios.ShowToastr(this.Page, "Ingrese un numero Valido", "Error", "Error");
                Limpiar();
            }
        }
    }
}