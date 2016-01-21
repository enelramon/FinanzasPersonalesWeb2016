using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace FinanzasPersonalesWeb
{
	public partial class ConsultaMiembros1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button2_Click(object sender, EventArgs e)
        {
            Miembros miembro = new Miembros();
            DataTable dt = new DataTable();
            string filtro = "1=1";

            if(BuscarPorDropDown.SelectedIndex == 0) // MiembroId
            {
                filtro = "MiembroId =" + FiltroTextBox.Text;
            }
            else if (BuscarPorDropDown.SelectedIndex == 1) //Nombre
            {
                filtro = "Nombre =" + FiltroTextBox.Text;
            }

        }
    }
}