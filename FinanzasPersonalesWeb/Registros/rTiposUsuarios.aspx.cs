﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.Registro
{
    public partial class rTiposUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                int id = 0;
                //Leermos el QueryString que llego en la url
                if (Request.QueryString["Id"] != null)
                {
                    id = Utilitarios.ToInt(Request.QueryString["Id"].ToString());

                    if (id > 0) //si es mayor que cero, buscar el registro
                    {

                        TiposUsuarios TipoUsuario = new TiposUsuarios();
                        if (!TipoUsuario.Buscar(id))
                        {
                            Utilitarios.ShowToastr(this.Page, "Registro no encontrado.", "Error", "Error");
                        }
                        else
                        {
                            LlenarCampos(TipoUsuario);
                            Habilitar();
                        }
                    }
                }
            }
        }
        public void LlenarClase(TiposUsuarios TipoUsuario)
        {
            TipoUsuario.TipoUsuarioId = (TipoUsuarioIdTextBox.Text == "") ? 0 : Convert.ToInt16(TipoUsuarioIdTextBox.Text);
            TipoUsuario.Descripcion = DescripcionTextBox.Text;
        }
        public void LlenarCampos(TiposUsuarios TipoUsuario)
        {
            TipoUsuarioIdTextBox.Text = Convert.ToString(TipoUsuario.TipoUsuarioId);
            DescripcionTextBox.Text = TipoUsuario.Descripcion;
        }
        public void Limpiar()
        {
            TipoUsuarioIdTextBox.Text = "";
            DescripcionTextBox.Text = "";
        }
        public void Habilitar()
        {
            TipoUsuarioIdTextBox.Enabled = !TipoUsuarioIdTextBox.Enabled;
            DescripcionTextBox.Enabled = !DescripcionTextBox.Enabled;
            BuscarButton.Enabled = !BuscarButton.Enabled;
            BtnNuevo.Enabled = !BtnNuevo.Enabled;
            BtnCancelar.Enabled = !BtnCancelar.Enabled;
            BtnModificar.Enabled = !BtnModificar.Enabled;
            BtnGuardar.Enabled = !BtnGuardar.Enabled;
            BtnEliminar.Enabled = !BtnEliminar.Enabled;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            if (TipoUsuarioIdTextBox.Text == "")
            {
                Utilitarios.ShowToastr(this.Page, "El ID no puede estar en Blanco.", "Advertencia", "Warning");
                return;
            }

            TiposUsuarios TipoUsuario = new TiposUsuarios();
            if (!(TipoUsuario.Buscar(Convert.ToInt16(TipoUsuarioIdTextBox.Text))))
            {
                Utilitarios.ShowToastr(this.Page, "Registro no encontrado.", "Error", "Error");
                Limpiar();
                return;
            }

            LlenarCampos(TipoUsuario);
        }


        protected void BtnNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
            Habilitar();
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            if (TipoUsuarioIdTextBox.Text == "")
            {
                Utilitarios.ShowToastr(this.Page, "El ID no puede estar en Blanco.", "Advertencia", "Warning");
                return;

            }
            TiposUsuarios TipoUsuario = new TiposUsuarios();

            if (!(TipoUsuario.Buscar(Convert.ToInt16(TipoUsuarioIdTextBox.Text))))
            {
                Utilitarios.ShowToastr(this.Page, "Registro no encontrado.", "Error", "Error");
                Limpiar();
                return;
            }

            LlenarCampos(TipoUsuario);
            Habilitar();

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
            Habilitar();

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            bool Paso = false;
            TiposUsuarios TipoUsuario = new TiposUsuarios();
            LlenarClase(TipoUsuario);

            if (TipoUsuario.TipoUsuarioId == 0)
            {
                Paso = TipoUsuario.Insertar();
            }
            else
            {
                Paso = TipoUsuario.Editar();
            }

            if (Paso)
            {
                Utilitarios.ShowToastr(this.Page, "Transaccion Exitosa.", "Felicidades", "Success");
                LlenarCampos(TipoUsuario);
                Habilitar();
            }

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            if (TipoUsuarioIdTextBox.Text == "")
            {
                Utilitarios.ShowToastr(this.Page, "El ID no puede estar en Blanco.", "Advertencia", "Warning");
                return;

            }
            TiposUsuarios TipoUsuario = new TiposUsuarios();

            if (!(TipoUsuario.Buscar(Convert.ToInt16(TipoUsuarioIdTextBox.Text))))
            {
                Utilitarios.ShowToastr(this.Page, "Registro no encontrado.", "Error", "Error");
                Limpiar();
                return;
            }

            if (TipoUsuario.Eliminar())
            {
                Utilitarios.ShowToastr(this.Page, "Transaccion Exitosa.", "Felicidades", "Success");

            }
        }
    }
}