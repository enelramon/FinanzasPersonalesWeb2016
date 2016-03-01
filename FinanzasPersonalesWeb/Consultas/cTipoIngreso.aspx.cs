using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.Consultas
{
    public partial class cTipoIngreso : System.Web.UI.Page
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
            TiposIngresos TipoIngreso = new TiposIngresos();

            ConsultaGridView.DataSource = TipoIngreso.Listado(" * ", Condicion, "");
            ConsultaGridView.DataBind();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            string Condiciones = "";

            if (CodigoTextBox.Text.Length > 0)
            {
                if (TipoIngresoDropDownList.SelectedIndex == 0 || TipoIngresoDropDownList.SelectedIndex == 1 || TipoIngresoDropDownList.SelectedIndex == 3)
                {
                    if (ValidarIdEntero(CodigoTextBox.Text) == 0)
                    {
                        Condiciones = " 1=1 ";
                    }
                    else
                    {
                        Condiciones = TipoIngresoDropDownList.SelectedItem.Text + " = " + CodigoTextBox.Text;
                    }
                    
                }

                if (TipoIngresoDropDownList.SelectedIndex == 1)
                {
                    Condiciones = " Descripcion like '%" + CodigoTextBox.Text + "%' ";
                }

                if (TipoIngresoDropDownList.SelectedIndex == 2)
                {
                    if (CodigoTextBox.Text == "0")
                    {
                        Condiciones = " EsActivo = " + CodigoTextBox.Text;
                    }
                    else
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