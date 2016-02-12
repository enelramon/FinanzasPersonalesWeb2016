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
                transferencia.Monto = Convert.ToDouble(MontoTextBox.Text);
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
                int id;
                id = Convert.ToInt32(TransferenciaIdTextBox.Text);
                transferencia.TransferenciaId = id;
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

        protected void Eliminarbutton_Click(object sender, EventArgs e)
        {
            Transferencias transferencias = new Transferencias();
            int id;
            int.TryParse(TransferenciaIdTextBox.Text, out id);
            transferencias.TransferenciaId = id;
            if (transferencias.Eliminar())
            {
                HttpContext.Current.Response.Write("<Script>alert('Datos eliminados')</Script>");

            }
            else
            {
                HttpContext.Current.Response.Write("<Script>alert('Error, no se han eliminado los datos')</Script>");
            }
        }

        protected void Buscarbutton_Click(object sender, EventArgs e)
        {
            Transferencias transferencia = new Transferencias();
            int Id = 0;
            int.TryParse(TransferenciaIdTextBox.Text, out Id);
            transferencia.TransferenciaId = Id;
            if (Id > 0)
            {

                if (transferencia.Buscar(Id))
                {
                    FechaTextBox.Text = transferencia.Fecha;
                    CuentaOrigenTextBox.Text = transferencia.CuentaOrigenId.ToString();
                    CuentaDestinoTextBox.Text = transferencia.CuentaDestinoId.ToString();
                    MontoTextBox.Text = transferencia.Monto.ToString();
                    ObservacionTextBox.Text = transferencia.Observacion;
                    UsuarioIdTextBox.Text = transferencia.UsuarioId.ToString();
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Id No Existe')</SCRIPT>");
                }
            }
            else
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Id Incorrecto')</SCRIPT>");
            }
        }

        protected void Nuevobutton_Click(object sender, EventArgs e)
        {

        }
    }
}