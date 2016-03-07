using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.Registros
{
    public partial class rCuentas : System.Web.UI.Page
    {


        public void LlenarClase(Cuentas Cuenta)
        {
            Cuenta.CuentaId = (TbCuentaId.Text == "") ? 0 : Convert.ToInt16(TbCuentaId.Text);
            Cuenta.UsuarioId = Convert.ToInt16(DropDownUsuario.SelectedValue);
            Cuenta.Descripcion = TbDescripcion.Text;
            Cuenta.Balance = Convert.ToSingle(TbBalance.Text);
            Cuenta.Porciento = Convert.ToSingle(TbPorciento.Text);
        }
        public void LlenarCampos(Cuentas Cuenta)
        {
            TbCuentaId.Text = Convert.ToString(Cuenta.CuentaId);
            TbDescripcion.Text = Cuenta.Descripcion;
            TbBalance.Text = Convert.ToString(Cuenta.Balance);
            TbPorciento.Text = Convert.ToString(Cuenta.Porciento);
            DropDownUsuario.SelectedValue = Cuenta.UsuarioId.ToString();

        }

        public void Limpiar()
        {
            TbCuentaId.Text = "";
            TbDescripcion.Text = "";
            TbBalance.Text = "";
            TbPorciento.Text = "";
            DropDownUsuario.ClearSelection();
        }

        void LlenarCombos()
        {
            Usuarios usuario = new Usuarios();

            DropDownUsuario.DataSource = usuario.Listado(" * ", "1=1", "");
            DropDownUsuario.DataTextField = "Nombre";
            DropDownUsuario.DataValueField = "UsuarioId";
            DropDownUsuario.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)

        {

            if (!Page.IsPostBack)
            {
                int id = 0;

                LlenarCombos();

                //Leermos el QueryString que llego en la url
                //id = Utilitarios.ToInt(Request.QueryString["Id"].ToString());

                if (id > 0) //si es mayor que cero, buscar el registro
                {
                    Cuentas cuenta = new Cuentas();
                    if (!cuenta.Buscar(id))
                    {
                        Utilitarios.ShowToastr(this.Page, "Registro no encontrado.", "Error", "Error");
                        Limpiar();
                    }
                    else
                    {
                        LlenarCampos(cuenta);
                    }

                }

            }

        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            bool Paso = false;
            Cuentas cuenta = new Cuentas();
            LlenarClase(cuenta);

            if (TbCuentaId.Text == "")
            {
                Paso = cuenta.Insertar();
            }
            else
            {
                Paso = cuenta.Editar();
            }

            if (Paso)
            {
                Utilitarios.ShowToastr(this.Page, "Transaccion Exitosa.", "Felicidades", "Success");
                LlenarCampos(cuenta);
            }
        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            if (TbCuentaId.Text == "")
            {
                Utilitarios.ShowToastr(this.Page, "El ID no puede estar en Blanco.", "Advertencia", "Warning");
                return;

            }
            Cuentas cuenta = new Cuentas();

            if (!(cuenta.Buscar(Convert.ToInt16(TbCuentaId.Text))))
            {
                Utilitarios.ShowToastr(this.Page, "Registro no encontrado.", "Error", "Error");
                Limpiar();
                return;
            }

            if (cuenta.Eliminar())
            {
                Utilitarios.ShowToastr(this.Page, "Transaccion Exitosa.", "Felicidades", "Success");
                Limpiar();

            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            if (TbCuentaId.Text == "")
            {
                Utilitarios.ShowToastr(this.Page, "El ID no puede estar en Blanco.", "Advertencia", "Warning");
                return;
            }

            Cuentas cuenta = new Cuentas();
            if (!(cuenta.Buscar(Convert.ToInt16(TbCuentaId.Text))))
            {
                Utilitarios.ShowToastr(this.Page, "Registro no encontrado.", "Error", "Error");
                Limpiar();
                return;
            }

            LlenarCampos(cuenta);
        }
    }
}