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
           

            DatosDropDownList.DataSource = transferencia.Listado(" * ", " 1=1 ", "");
            DatosDropDownList.DataTextField = "Fecha";
            DatosDropDownList.DataValueField = "TransferenciaId";
            DatosDropDownList.DataBind();
            
            DataTable dt = new DataTable();
            string condicion;

            if (DatosDropDownList.SelectedIndex == 0)
            {
                if (DatosTextBox.Text.Trim().Length == 0)
                {
                    condicion = "1=1";
                }
                else
                {
                    condicion = "TransferenciaId = " + DatosTextBox.Text;
                }
                dt = transferencia.Listado(" * ", condicion, "");
                DatosGridView.DataSource = dt;
                DatosGridView.DataBind();
            }
            if (DatosDropDownList.SelectedIndex == 1)
            {
                if (DatosTextBox.Text.Trim().Length == 0)
                {
                    condicion = "2=2";
                }
                else
                {
                    condicion = "Fecha = " + DatosTextBox.Text;
                }

                dt = transferencia.Listado(" * ", condicion, "");
                DatosGridView.DataSource = dt;
                DatosGridView.DataBind();
            }
            if (DatosDropDownList.SelectedIndex == 2)
            {
                if (DatosTextBox.Text.Trim().Length == 0)
                {
                    condicion = "3=3";
                }
                else
                {
                    condicion = "UsuarioId" + DatosTextBox.Text;
                }

                dt = transferencia.Listado(" * ", condicion, "");
                DatosGridView.DataSource = dt;
                DatosGridView.DataBind();
            }
        }
    }
}