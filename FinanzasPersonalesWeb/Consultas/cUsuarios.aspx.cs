﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace FinanzasPersonalesWeb.Consultas
{
    public partial class cUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarPor_Click(object sender, EventArgs e)
        {
            Usuarios Usuario = new Usuarios();
            DataTable dt = new DataTable();
            string filtro = "1=1";

            if (FiltroDropDown.SelectedIndex == 0) //ID
            {
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "UsuarioId = " + FiltroTextBox.Text;
                }
            }
            else if (FiltroDropDown.SelectedIndex == 1) //Nombre
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {

                    filtro = "Nombre like '%" + FiltroTextBox.Text + "%'";
                }
            else if (FiltroDropDown.SelectedIndex == 2) //Apellidos
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {

                    filtro = "Apellidos like '%" + FiltroTextBox.Text + "%'";
                }
            else if (FiltroDropDown.SelectedIndex == 3) //Usuario
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {

                    filtro = "Usuario like '%" + FiltroTextBox.Text + "%'";
                }
            else if (FiltroDropDown.SelectedIndex == 4) //Email
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {

                    filtro = "Email like '%" + FiltroTextBox.Text + "%'";
                }

            dt = Usuario.Listado("UsuarioId, Nombre, Apellidos, TipoUsuarioId, Usuario, Email", filtro, "UsuarioId ASC");
            UsuarioGridView.DataSource = dt;
            UsuarioGridView.DataBind();

        }
    }
}