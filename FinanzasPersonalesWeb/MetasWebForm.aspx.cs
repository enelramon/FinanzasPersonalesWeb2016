using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class MetasWebForm : System.Web.UI.Page
    {
        Metas meta = new Metas();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Limpiar()
        {
            MetaIdTextBox.Text = "";
            DescripcionTextBox.Text = "";
            TipoDeIngresoDropDownList.SelectedIndex=0;
            MontoTextBox.Text = "";
            MetasListBox.Items.Clear();
        }

        protected void GuadarButton_Click1(object sender, EventArgs e)
        {
            meta.Descripcion = DescripcionTextBox.Text;
            meta.UsuarioId = 1;
            meta.LimpiarList();
            for (int i = 0; i < MetasListBox.Items.Count; i++)
            {
                int id = (int)meta.ObtenerMetaId().Rows[0]["MetaId"];
                meta.AgregarMetas(id,1,333);
            }

            if (meta.Insertar())
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Guardado Correctamente')</SCRIPT>");
            }
            else
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Error al Guardar')</SCRIPT>");
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            int Id = 0;
            int.TryParse(MetaIdTextBox.Text, out Id);
            if (Id > 0)
            {
                if (meta.Buscar(Id))
                {
                    DescripcionTextBox.Text = meta.Descripcion;
                    foreach (var item in meta.metas)
                    {
                        MetasListBox.Items.Add(meta.Monto.ToString());
                    }
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Id No Existe')</SCRIPT>");
                }
            }
            else
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Id Incorrecto')</SCRIPT>");
            }
            
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            if (MontoTextBox.Text.Length > 0)
            {
                MetasListBox.Items.Add(MontoTextBox.Text);
                MontoTextBox.Text = "";
            }
            else
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Ingrese un Monto')</SCRIPT>");
            }
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            int Id = 0;
            int.TryParse(MetaIdTextBox.Text, out Id);
            if (Id > 0)
            {
                meta.MetaId = Id;
                if (meta.Eliminar())
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Eliminado Correctamente')</SCRIPT>");
                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Error al Eliminado')</SCRIPT>");
                }
            }
            else
            {
                HttpContext.Current.Response.Write("<SCRIPT>alert('Id Incorrecto')</SCRIPT>");
            }
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

    }
}