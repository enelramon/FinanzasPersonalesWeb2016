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
            
            if (!IsPostBack)
            {
                Cuentas cuenta = new Cuentas();
                CuentaOrigenDropDownList.DataSource = cuenta.Listado(" * ", "1=1", "");
                CuentaOrigenDropDownList.DataTextField = "Descripcion";
                CuentaOrigenDropDownList.DataValueField = "CuentaId";
                CuentaOrigenDropDownList.DataBind();

                CuentaDestinoDropDownList.DataSource = cuenta.Listado(" * ", "CuentaId <> " + CuentaOrigenDropDownList.SelectedValue, "");
                CuentaDestinoDropDownList.DataTextField = "Descripcion";
                CuentaDestinoDropDownList.DataValueField = "CuentaId";
                CuentaDestinoDropDownList.DataBind();
                int id;
                Transferencias tran = new Transferencias();
                if (Request.QueryString["id"] != null)
                {
                   int.TryParse (Request.QueryString["id"].ToString(),out id);

                    if (id > 0)
                    {
                        if (!tran.Buscar(id))
                        {
                            Utilitarios.ShowToastr(this.Page, "Registro no encontrado.", "Error", "Error");
                            Limpiar();
                        }
                        else
                        {
                            Llenar(tran);
                        }

                    }
                }
            }

        }


        public void Limpiar()
        {
            FechaTextBox.Text = string.Empty;
            ObservacionTextBox.Text = string.Empty;
            MontoTextBox.Text = string.Empty;
            UsuarioIdTextBox.Text = string.Empty;
            TransferenciaIdTextBox.Text = string.Empty;
        }

        protected void GuardarButton_Click1(object sender, EventArgs e)
        {
            Transferencias transferencia = new Transferencias();

            if (TransferenciaIdTextBox.Text.Length == 0)
            {

                transferencia.Fecha = FechaTextBox.Text;
                transferencia.CuentaOrigenId = Convert.ToInt32( CuentaOrigenDropDownList.SelectedValue);
                transferencia.CuentaDestinoId = Convert.ToInt32(CuentaDestinoDropDownList.SelectedValue);
                transferencia.Monto = Convert.ToDouble(MontoTextBox.Text);
                transferencia.Observacion = ObservacionTextBox.Text;
                transferencia.UsuarioId = Convert.ToInt32(UsuarioIdTextBox.Text);
                if (transferencia.Insertar())
                {
                    Utilitarios.ShowToastr(this.Page, "Se ha realizado la transferencia", "Transferido", "Success");
                    Limpiar();
                }
                else
                {
                    Utilitarios.ShowToastr(this.Page, "Error al realizar la transferencia", "Error", "Warning");
                }
            }
            else
            {
                int id;
                id = Convert.ToInt32(TransferenciaIdTextBox.Text);
                transferencia.TransferenciaId = id;
                transferencia.Fecha = FechaTextBox.Text;
                transferencia.CuentaOrigenId = Convert.ToInt32(CuentaOrigenDropDownList.SelectedValue);
                transferencia.CuentaDestinoId = Convert.ToInt32(CuentaDestinoDropDownList.SelectedValue);
                transferencia.Monto = Convert.ToDouble(MontoTextBox.Text);
                transferencia.Observacion = ObservacionTextBox.Text;
                transferencia.UsuarioId = Convert.ToInt32(UsuarioIdTextBox.Text);
                if (transferencia.Editar())
                {
                    Utilitarios.ShowToastr(this.Page, "Se ha actualizado la transferencia", "Actualizacion", "Success");
                    Limpiar();
                }
                else
                {
                    Utilitarios.ShowToastr(this.Page, "Error al actualizar", "Error", "Warning");
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
                Utilitarios.ShowToastr(this.Page, "Se han eliminado los datos", "Eliminado", "Success");

            }
            else
            {
                Utilitarios.ShowToastr(this.Page, "Error al eliminar", "Error", "Warning");
            }
        }

        public void Llenar(Transferencias transferencia)
        {
            FechaTextBox.Text = transferencia.Fecha;
            CuentaOrigenDropDownList.SelectedValue = transferencia.CuentaDestinoId.ToString();
            CuentaDestinoDropDownList.SelectedValue = transferencia.CuentaOrigenId.ToString();
            MontoTextBox.Text = transferencia.Monto.ToString();
            ObservacionTextBox.Text = transferencia.Observacion;
            UsuarioIdTextBox.Text = transferencia.UsuarioId.ToString();
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
                    Llenar(transferencia);
                }
                else
                {
                    Utilitarios.ShowToastr(this.Page, "Ingrese un id", "Error", "Warning");
                }
            }
            else
            {
                Utilitarios.ShowToastr(this.Page, "El id no existe", "Error", "Warning");
            }
        }

        protected void Nuevobutton_Click(object sender, EventArgs e)
        {

        }

        protected void CuentaOrigenDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Cuentas cuenta = new Cuentas();
            CuentaDestinoDropDownList.DataSource = cuenta.Listado(" * ", "CuentaId <> " + CuentaOrigenDropDownList.SelectedValue, "");
            CuentaDestinoDropDownList.DataTextField = "Descripcion";
            CuentaDestinoDropDownList.DataValueField = "CuentaId";
            CuentaDestinoDropDownList.DataBind();
        }
    }
}