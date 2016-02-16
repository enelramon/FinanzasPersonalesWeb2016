using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.Registros
{
    public partial class rMetasWebForm : System.Web.UI.Page
    {  
        protected void Page_Load(object sender, EventArgs e)
        {
             //LlenarDropDownList();
        }

        public void Limpiar()
        {
            MetaIdTextBox.Text = "";
            DescripcionTextBox.Text = "";
            TipoDeIngresoDropDownList.SelectedIndex=0;
            MontoTextBox.Text = "";
            GuadarButton.Text = "Guardar";
            MetasListBox.Items.Clear();
        }

        public void LlenarDropDownList()
        {
            TiposIngresos tipo = new TiposIngresos();
            TipoDeIngresoDropDownList.DataSource = tipo.Listado(" * ", "1=1", "TipoIngresoId");
            TipoDeIngresoDropDownList.DataTextField = "Descripcion";
            TipoDeIngresoDropDownList.DataValueField = "TipoIngresoId";
            TipoDeIngresoDropDownList.DataBind();
        }

        protected void GuadarButton_Click1(object sender, EventArgs e)
        {
            Metas meta = new Metas();
            meta.Descripcion = DescripcionTextBox.Text;
            meta.UsuarioId = 1;
            meta.TipoIngresoId = Convert.ToInt32(TipoDeIngresoDropDownList.SelectedValue);
            meta.LimpiarList();

            for (int i = 0; i < MetasListBox.Items.Count; i++)
            {
                int id = (int)meta.ObtenerMetaId().Rows[0]["MetaId"];
                Double monto = Convert.ToDouble(MetasListBox.Items[i].ToString());
                meta.AgregarMetas(id,meta.TipoIngresoId , monto);
            }

            if (MetaIdTextBox.Text.Length <= 0)
            {
                
                if (meta.Insertar())
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Guardado Correctamente')</SCRIPT>");
                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Error al Guardar')</SCRIPT>");
                }
            }
            else
            {
                int Id;
                int.TryParse(MetaIdTextBox.Text, out Id);
                if (Id > 0)
                {
                    meta.MetaId = Id;
                    if (meta.Editar())
                    {
                        HttpContext.Current.Response.Write("<SCRIPT>alert('Modificado Correctamente')</SCRIPT>");
                        Limpiar();
                    }
                    else
                    {
                        HttpContext.Current.Response.Write("<SCRIPT>alert('Error al Modificar')</SCRIPT>");
                    }
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Id Incorrecto')</SCRIPT>");
                }
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            int Id = 0;
            Metas meta = new Metas();
            int.TryParse(MetaIdTextBox.Text, out Id);
            if (Id > 0)
            {
                MetasListBox.Items.Clear();
                if (meta.Buscar(Id))
                {
                    DescripcionTextBox.Text = meta.Descripcion;
                    foreach (var item in meta.metas)
                    {
                        MetasListBox.Items.Add(item.Monto.ToString());
                    }
                    GuadarButton.Text = "Modificar";
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
            Metas meta = new Metas();
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