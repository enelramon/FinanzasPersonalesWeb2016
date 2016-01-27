using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using DAL;

namespace FinanzasPersonalesWeb
{
    public partial class cTiposUsuarios : System.Web.UI.Page
    {
        protected void BuscarPor_Click(object sender, EventArgs e)
        {
            ConexionDb Conexion = new ConexionDb();
            DataTable dt = new DataTable();
            string Comodin = "";
            if (OperadorDropDownList.SelectedIndex == 0)
            {
                Comodin = "%";
            }


            dt = Conexion.ObtenerDatos("Select IdTipoUsuario as Codigo,Descripcion from TiposUsuario Where  " + BuscarDropDownList.SelectedValue + " " + OperadorDropDownList.SelectedValue + " '" + Comodin + FiltroTextBox.Text.Trim() + Comodin + "'");

            GrdDatos.DataSource = dt;
            GrdDatos.DataBind();

        }
    }
}