using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Web.Services;

namespace FinanzasPersonalesWeb.Consultas
{
    public partial class cCuentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cuentas c = new Cuentas();
            DataTable dt = new DataTable();
            string filtro = "1=1";
            CuentasGridView.DataSource = c.Listado(" * ", filtro, "");
            CuentasGridView.DataBind();
        }
        [WebMethod]
        public static List<Cuentas> GetCuentas()
        {
           return  Cuentas.CuentasList();
        }
        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Cuentas c = new Cuentas();
            DataTable dt = new DataTable();
            string filtro = "1=1";

            if (BuscarPorDropdown.SelectedIndex == 0) // CuentaId
            {
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "CuentaId = " + FiltroTextBox.Text;
                }
            }

            if (BuscarPorDropdown.SelectedIndex == 1) //UsuarioId
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

            if (BuscarPorDropdown.SelectedIndex == 2) // Descripcion
            {
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "Descripcion like '%" + FiltroTextBox.Text + "%'";
                }
            }

            if (BuscarPorDropdown.SelectedIndex == 3) //Balance
            {
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "Balance = " + FiltroTextBox.Text;
                }
            }

            if (BuscarPorDropdown.SelectedIndex == 4) //Porciento
            {
                if (FiltroTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "Porciento = " + FiltroTextBox.Text;
                }
            }

            dt = c.Listado("CuentaId, UsuarioId, Descripcion, Balance, Porciento ", filtro, "");
            CuentasGridView.DataSource = dt;
            CuentasGridView.DataBind();

        }
    }
}
