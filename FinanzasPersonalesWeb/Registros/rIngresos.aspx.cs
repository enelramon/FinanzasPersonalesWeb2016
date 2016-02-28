using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.Registros
{
    public partial class rIngresos : System.Web.UI.Page
    {
        TiposIngresos TipodeIngreso = new TiposIngresos();
        Cuentas Cuenta = new Cuentas();
        Miembros Miembro = new Miembros();
        Ingresos Ingreso = new Ingresos();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MiembroDropDownList.DataSource = Miembro.Listado(" * ", "1=1", "");
                MiembroDropDownList.DataTextField = "Nombre";
                MiembroDropDownList.DataValueField = "MiembroId";
                MiembroDropDownList.DataBind();

                CuentaDropDownList.DataSource = Cuenta.Listado(" * ", "1=1", "");
                CuentaDropDownList.DataTextField = "Descripcion";
                CuentaDropDownList.DataValueField = "CuentaId";
                CuentaDropDownList.DataBind();

                TipoIngresoDropDownList.DataSource = TipodeIngreso.Listado(" * ", "1=1", "");
                TipoIngresoDropDownList.DataTextField = "Descripcion";
                TipoIngresoDropDownList.DataValueField = "TipoIngresoId";
                TipoIngresoDropDownList.DataBind();
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

        public double ValidarIdDouble(string IdTextBox)
        {
            double Id = 0;

            if (IdTextBox.Length > 0)
            {
                bool result = double.TryParse(IdTextBox, out Id);
            }

            return Id;
        }

        public void Limpiar()
        {
            MontoTexBox.Text = "";
            CuentaDropDownList.ClearSelection();
            MiembroDropDownList.ClearSelection();
            TipoIngresoDropDownList.ClearSelection();
        }

        public bool LlenarDatos()
        {
            bool retorno = false;

            if (MontoTexBox.Text.Length > 0)
            {
                Ingreso.Monto = ValidarIdDouble(MontoTexBox.Text);
                Ingreso.TipoIngresoId = ValidarIdEntero(TipoIngresoDropDownList.SelectedValue);
                Ingreso.MiembroId = ValidarIdEntero(MiembroDropDownList.SelectedValue);
                Ingreso.CuentaId = ValidarIdEntero(CuentaDropDownList.SelectedValue);
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
            if (ValidarIdEntero(IngresoTextBox.Text) > 0)
            {
                if (Ingreso.Buscar(ValidarIdEntero(IngresoTextBox.Text)))
                {
                    MontoTexBox.Text = Ingreso.Monto.ToString();

                    CuentaDropDownList.SelectedValue = Ingreso.CuentaId.ToString();

                    TipoIngresoDropDownList.SelectedValue = Ingreso.TipoIngresoId.ToString();

                    MiembroDropDownList.SelectedValue = Ingreso.MiembroId.ToString();
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
            if (ValidarIdEntero(IngresoTextBox.Text) > 0)
            {
                if (LlenarDatos())
                {
                    Ingreso.IngresoId = ValidarIdEntero(IngresoTextBox.Text);

                    if (Ingreso.Editar())
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
                    if (Ingreso.Insertar())
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
            if (ValidarIdEntero(IngresoTextBox.Text) > 0)
            {
                if (Ingreso.Buscar(ValidarIdEntero(IngresoTextBox.Text)))
                {
                    Ingreso.IngresoId = ValidarIdEntero(IngresoTextBox.Text);

                    if (Ingreso.Eliminar())
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