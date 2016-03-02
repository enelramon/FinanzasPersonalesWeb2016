using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanzasPersonalesWeb.Consultas
{
    public partial class cIngresos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid(" 1=1 ");

            if (ConsultaGridView.Rows.Count == 0)
            {
                Utilitarios.ShowToastr(this.Page, "No hay Registro", "Error", "Error");
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
            CodigoTextBox.Text = "";
        }

        void LlenarGrid(string Condicion)
        {
            Ingresos Ingreso = new Ingresos();

            ConsultaGridView.DataSource = Ingreso.Listado(" * ", Condicion, "");
            ConsultaGridView.DataBind();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            string Condiciones = "";

            if (CodigoTextBox.Text.Length > 0)
            {
                if (IngresoDropDownList.SelectedIndex == 0 || IngresoDropDownList.SelectedIndex == 1 || IngresoDropDownList.SelectedIndex == 2 || IngresoDropDownList.SelectedIndex == 3 || IngresoDropDownList.SelectedIndex == 4 || IngresoDropDownList.SelectedIndex == 5)
                {
                    if (ValidarIdEntero(CodigoTextBox.Text) == 0)
                    {
                        Condiciones = " 1=1 ";
                    }
                    else
                    {
                        Condiciones = IngresoDropDownList.SelectedItem.Text + " = " + CodigoTextBox.Text;
                    }

                }

                if (IngresoDropDownList.SelectedIndex == 1)
                {
                    Condiciones = " Fecha like '%" + CodigoTextBox.Text + "%' ";
                }

                if (IngresoDropDownList.SelectedIndex == 2)
                {
                    if (ValidarIdEntero(CodigoTextBox.Text) == 0)
                    {
                        Condiciones = " 1=1 ";
                    }
                    else
                    {
                        Condiciones = IngresoDropDownList.SelectedItem.Text + " = " + CodigoTextBox.Text;
                    }
                }

                if (IngresoDropDownList.SelectedIndex == 3)
                {
                    if (ValidarIdEntero(CodigoTextBox.Text) == 0)
                    {
                        Condiciones = " 1=1 ";
                    }
                    else
                    {
                        Condiciones = IngresoDropDownList.SelectedItem.Text + " = " + CodigoTextBox.Text;
                    }

                }

                if (IngresoDropDownList.SelectedIndex == 4)
                {
                    if (ValidarIdEntero(CodigoTextBox.Text) == 0)
                    {
                        Condiciones = " 1=1 ";
                    }
                    else
                    {
                        Condiciones = IngresoDropDownList.SelectedItem.Text + " = " + CodigoTextBox.Text;
                    }

                }

                if (IngresoDropDownList.SelectedIndex == 5)
                {
                    Condiciones = " Observacion like '%" + CodigoTextBox.Text + "%' ";
                }

                LlenarGrid(Condiciones);

                if (ConsultaGridView.Rows.Count == 0)
                {
                    Utilitarios.ShowToastr(this.Page, "No hay Registro", "Error", "Error");
                    LlenarGrid(" 1=1 ");
                }

                Limpiar();
            }
            else
            {
                Utilitarios.ShowToastr(this.Page, "Ingrese un Caracter Valido", "Error", "Error");

                Limpiar();
            }
        }
    }
}