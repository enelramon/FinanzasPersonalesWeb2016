using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
namespace FinanzasPersonalesWeb
{
    public partial class CTransferencias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Transferencias transferencia = new Transferencias();
           
            
            DataTable dt = new DataTable();
            string filtro = "1=1";

            if (DatosDropDownList.SelectedIndex == 0)
            {
                if (DatosTextBox.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "TransferenciaId = " + DatosTextBox.Text;
                }
                dt = transferencia.Listado(" * ", filtro, "");
                DatosGridView.DataSource = dt;
                DatosGridView.DataBind();
            }
            if (DatosDropDownList.SelectedIndex == 1)
            {
                if (DatosTextBox.Text.Trim().Length == 0)
                {
                    filtro = "2=2";
                }
                else
                {

                    filtro = "Fecha like '%" + DatosTextBox.Text + "%'";
                }

                dt = transferencia.Listado(" * ", filtro, "");
                DatosGridView.DataSource = dt;
                DatosGridView.DataBind();
            }
            if (DatosDropDownList.SelectedIndex == 2)
            {
                if (DatosTextBox.Text.Trim().Length == 0)
                {
                    filtro = "3=3";
                }
                else
                {
                    filtro = "UsuarioId = " + DatosTextBox.Text;
                }

                dt = transferencia.Listado(" TransferenciaId, Fecha, CuentaOrigenId, CuentaDestinoId, Monto, Observacion, UsuarioId ", filtro, "");
                DatosGridView.DataSource = dt;
                DatosGridView.DataBind();
            }

            
        }
    }
}