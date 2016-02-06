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
	public partial class ConsultaMiembros : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            Miembros m = new Miembros();
            DataTable dt = new DataTable();
            string filtro = "1=1";

            MiembrosDataGrid.DataSource = m.Listado(" * ", filtro, "");
            MiembrosDataGrid.DataBind();
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            Miembros m = new Miembros();
            DataTable dt = new DataTable();
            string filtro = "1=1";

            if(BuscarPorDropdown.SelectedIndex == 0) // MiembroId
            {
                if(TbFiltro.Text.Trim().Length == 0)
                { 
                    filtro = "1=1";
                }
                else
                {
                    filtro = "MiembroId = " + TbFiltro.Text;
                }
            }

            if(BuscarPorDropdown.SelectedIndex == 1) //Nombre de miembro
            {
                if (TbFiltro.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "Nombre like '%" + TbFiltro.Text+"%'";
                }
            }

            if(BuscarPorDropdown.SelectedIndex == 2) // esActivo
            {
                if (TbFiltro.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "esActivo = " + TbFiltro.Text;
                }
            }

            if(BuscarPorDropdown.SelectedIndex == 3) //UsuarioId
            {
                if (TbFiltro.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "UsuarioId = " + TbFiltro.Text;
                }
            }

            dt = m.Listado("MiembroId, Nombre, esActivo, UsuarioId ", filtro, "");
            MiembrosDataGrid.DataSource = dt;
            MiembrosDataGrid.DataBind();


        }
    }
}