using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace FinanzasPersonalesWeb
{
    public partial class Transferencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Guardarbutton_Click(object sender, EventArgs e)
        {
            

        }

        protected void GuardarButton_Click1(object sender, EventArgs e)
        {
            Transferencias transferencia = new Transferencias();
            transferencia.Fecha = FechaTextBox.Text;
            transferencia.CuentaOrigenId = Convert.ToInt32(CuentaOrigenTextBox.Text);
            transferencia.CuentaDestinoId = Convert.ToInt32(CuentaDestinoTextBox.Text);
        }
    }
}