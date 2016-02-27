using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace FinanzasPersonalesWeb
{
    public partial class cCuentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonBuscarPor_Click(object sender, EventArgs e)
        {
            Cuentas BuscaCuenta = new Cuentas();
            DataTable dt = new DataTable();
            string filtririjillo = "1=1";

            if (DropDownBuscarPor.SelectedIndex == 0) 
            {
                if (DropDownBuscarPor.Text.Trim().Length == 0)
                {
                    filtririjillo = "1=1";
                }
                else
                {
                    filtririjillo = "CuentaId = " + TextBoxFiltro.Text;
                }
            }
            else if (DropDownBuscarPor.SelectedIndex == 1) 
                if (TextBoxFiltro.Text.Trim().Length == 0)
                {
                    filtririjillo = "1=1";
                }
                else
                {

                    filtririjillo = "Descripcion like '%" + TextBoxFiltro.Text + "%'";
                }
            else if (DropDownBuscarPor.SelectedIndex == 2) 
                if (TextBoxFiltro.Text.Trim().Length == 0)
                {
                    filtririjillo = "1=1";
                }
                else
                {

                    filtririjillo = "Balance  = "+ TextBoxFiltro.Text ;
                }
            else if (DropDownBuscarPor.SelectedIndex == 3) //filtrar por Porciento
                if (TextBoxFiltro.Text.Trim().Length == 0)
                {
                    filtririjillo = "1=1";
                }
                else
                {

                    filtririjillo = "Porciento=" + TextBoxFiltro.Text;
                }

            dt = BuscaCuenta.Listado("CuentaId, Descripcion, Balance, Porciento", filtririjillo, "CuentaId ASC");
            GridViewConsultaCuentas.DataSource = dt;
            GridViewConsultaCuentas.DataBind();
        }
    }
}