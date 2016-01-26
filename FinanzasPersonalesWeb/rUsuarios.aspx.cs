﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Usuarios Usuario = new Usuarios();
            Boolean paso = false;

            if (NombreTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            else if (ApellidoTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            else if (UsuarioTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            else if (PassTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            else if (EmailTextBox.Text.Trim().Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe llenar los campos.');", true);
            }
            if (AceptarCheckBox.Checked == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Debe aceptar los Terminos para poder continuar.');", true);
            }
            else {
                //todo: terminar de arreglar esto.
                NombreTextBox.Text = Usuario.Nombres;
                ApellidoTextBox.Text = Usuario.Apellidos;
                UsuarioTextBox.Text = Usuario.Usuario;
                PassTextBox.Text = Usuario.Password;
                EmailTextBox.Text = Usuario.Email;
                Usuario.TipoUsuarioId = 1;

                paso = Usuario.Insertar();
            }
            if (paso)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Transaccion Exitosa.');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ha habido un error, por favor vuelva a intentar.');", true);
            }
        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/rUsuarios.aspx");
        }
    }
}