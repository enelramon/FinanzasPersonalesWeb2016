using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using BLL;


namespace FinanzasPersonalesWeb
{
    public partial class MiembrosWebFor : System.Web.UI.Page
    {
        Miembros m = new Miembros();
        int IdM;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        public void Limpiar()
        {
            TbMiembroId.Text = "";
            TbNombre.Text = "";
            RbActivo.Checked = false;
            RbInactivo.Checked = false;
            DropDownUsuario.ClearSelection();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                m = new Miembros();
                m.Nombre = TbNombre.Text;

                if(RbActivo.Checked == true)
                {
                    m.esActivo = 1;
                }
                else if(RbInactivo.Checked == true)
                {
                    m.esActivo = 0;
                }
                m.UsuarioId = int.Parse(DropDownUsuario.SelectedValue);

                if (!TbMiembroId.Text.Equals(String.Empty))
                {
                    int id = int.Parse(TbMiembroId.Text);

                    if (m.Editar())
                    {
                        Response.Write("Se ha editado el miembro exitosamente.");
                        Limpiar();

                    }
                    else
                    {
                        Response.Write("Ocurrio un error.");
                    }

                    if (TbMiembroId.Equals(String.Empty))
                    {
                        if (m.Insertar())
                        {
                            Response.Write("Se ha insertado exitosamente.");
                            Limpiar();
                        }
                        else
                        {
                            Response.Write("Ocurrio un Error.");
                        }
                    }
                }
            } catch(Exception e2)
            {
                Response.Write(e2.Message);
            }
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}