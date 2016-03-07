using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb.Registros
{
    public partial class rMetas : System.Web.UI.Page
    {  
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int Id = 0;
                LlenarDropDownList();

                if (Request.QueryString["Id"] != null)
                {
                    Id = Utilitarios.ToInt(Request.QueryString["Id"].ToString());

                    if (Id > 0)
                    {
                        Metas meta = new Metas();
                        if (!meta.Buscar(Id))
                        {
                            ShowToast("error", "Error", "Registro no encontrado.");
                            Limpiar();
                        }
                        else
                        {
                            MetaIdTextBox.Text = Id.ToString();
                            LlenarMetas(meta);
                        }

                    }
                }
            }
             
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

        public void LlenarMetas(Metas meta)
        {
            DescripcionTextBox.Text = meta.Descripcion;
            foreach (var item in meta.metas)
            {
                MetasListBox.Items.Add(item.Monto.ToString());
            }
        }

        protected void GuadarButton_Click1(object sender, EventArgs e)
        {
            Metas meta = new Metas();
            meta.Descripcion = DescripcionTextBox.Text;
            meta.UsuarioId = 5;
            meta.TipoIngresoId = Convert.ToInt32(TipoDeIngresoDropDownList.SelectedValue);
            meta.LimpiarList();

            for (int i = 0; i < MetasListBox.Items.Count; i++)
            {
                Double monto = Convert.ToDouble(MetasListBox.Items[i].ToString());
                meta.AgregarMetas(1,meta.TipoIngresoId , monto);
            }

            if (MetaIdTextBox.Text.Length <= 0)
            {
                
                if (meta.Insertar())
                {
                    ShowToast("success", "Correcto", "Guardado Correctamente");
                    Limpiar();
                }
                else
                {
                    ShowToast("error", "Error", "Error Al Guardar");
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
                        ShowToast("success", "Modificado", "Modificado Correctamente");
                        Limpiar();
                    }
                    else
                    {
                        ShowToast("error", "Error", "Error Al Modificar");
                    }
                }
                else
                {
                    ShowToast("warning", "Incorrecto", "Id Incorrecto");
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
                    LlenarMetas(meta);
                    GuadarButton.Text = "Modificar";
                }
                else
                {
                    ShowToast("error", "Error", "Id No Existe");
                }
            }
            else
            {
                ShowToast("warning", "Incorrecto", "Id Incorrecto");
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
                ShowToast("warning", "Advertencia", "Ingrese un Monto");
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
                if (meta.Buscar(meta.MetaId))
                {
                    if (meta.Eliminar())
                    {
                        ShowToast("success", "Eliminado", "Eliminado Correctamente");
                        Limpiar();
                    }
                    else
                    {
                        ShowToast("error", "Error", "Error al Eliminado");
                    }
                }
                else
                {
                    ShowToast("warning", "Incorrecto", "Id No Existe");
                }
            }
            else
            {
                ShowToast("warning", "Incorrecto", "Id Incorrecto");
            }
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
            ShowToast("success", "Limpiar", "Limpio Correctamente");
        }

        public void ShowToast(string tipo, string titulo, string mensaje)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "toastr_message", "toastr." + tipo + "('" + mensaje + "', '" + titulo + "')", true);
        }
    }
}