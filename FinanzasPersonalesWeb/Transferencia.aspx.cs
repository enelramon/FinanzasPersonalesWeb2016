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

        public void Limpiar()
        {
            FechaTextBox.Text = string.Empty;
            ObservacionTextBox.Text = string.Empty;
        }

        protected void GuardarButton_Click1(object sender, EventArgs e)
        {
            Transferencias transferencia = new Transferencias();

            if (TransferenciaIdTextBox.Text.Length == 0)
            {

                transferencia.Fecha = FechaTextBox.Text;
                transferencia.CuentaOrigenId = Convert.ToInt32(CuentaOrigenTextBox.Text);
                transferencia.CuentaDestinoId = Convert.ToInt32(CuentaDestinoTextBox.Text);
                //transferencia.Monto = Convert.ToDouble(TransferenciaIdTextBox.Text);
                transferencia.Observacion = ObservacionTextBox.Text;
                transferencia.UsuarioId = Convert.ToInt32(UsuarioIdTextBox.Text);
                if (transferencia.Insertar())
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Transferencia Realizada')</SCRIPT>");
                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Transferencia no Realizada')</SCRIPT>");
                }
            }
            else
            {
                transferencia.TransferenciaId = Convert.ToInt32(TransferenciaIdTextBox.Text);
                if (transferencia.Editar())
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Actualizacion Realizada')</SCRIPT>");
                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Error al Actualizar Datos')</SCRIPT>");
                }
            }
        }
    }
}