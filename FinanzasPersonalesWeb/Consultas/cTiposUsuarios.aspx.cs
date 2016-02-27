using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;


namespace FinanzasPersonalesWeb.Consultas
{
    public partial class cTiposUsuarios : System.Web.UI.Page
    {
        protected void BuscarPor_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string filtro = "1=1";
            TiposUsuarios TipoUsuario = new TiposUsuarios();
            if (OperadorDropDownList.SelectedIndex == 0) //ID
            {
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "TipoUsuarioId = " + FiltroTextBox.Text;
                }
            }
            else if (OperadorDropDownList.SelectedIndex == 1) //Nombre
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {

                    filtro = "Descripcion like '%" + FiltroTextBox.Text + "%'";
                }

            dt = TipoUsuario.Listado("TipoUsuarioId, Descripcion", filtro, "TipoUsuarioId ASC");
            //UsuarioGridView.DataSource = dt;
            //UsuarioGridView.DataBind();
        }   //
    }
}