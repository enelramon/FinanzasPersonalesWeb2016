using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class rCuentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Cuentas cu = new Cuentas();
            cu.CuentaId = Int32.Parse(TextBoxIdCuenta.Text);
            cu.Descripcion = TextBoxDescripcion.Text;
            cu.Balance = float.Parse(TextBoxBalance.Text);
            cu.Porciento = int.Parse(TextBoxPorciento.Text);
            cu.Insertar();

        }

        protected void BtnNuevo_Click(object sender, EventArgs e)
        {
            TextBoxIdCuenta.Text = "";
            TextBoxDescripcion.Text = "";
            TextBoxBalance.Text = "";
            TextBoxPorciento.Text = "";

          
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            Cuentas eli = new Cuentas();
            eli.CuentaId = int.Parse(TextBoxIdCuenta.Text);
            eli.Eliminar();

            TextBoxDescripcion.Text = "";
            TextBoxBalance.Text = "";
            TextBoxPorciento.Text = "";


        }
    }
}