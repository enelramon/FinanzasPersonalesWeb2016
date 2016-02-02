using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class MetasConsultasWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarGridView();
        }

        public void CargarGridView()
        {
            Metas meta = new Metas();
            MetasGridView.DataSource = meta.Listado(" * ", " 1=1 ", "");
            MetasGridView.DataBind();
        }

        protected void BuscarButton_Click1(object sender, EventArgs e)
        {
            int Id = 0;
            Metas meta = new Metas();
            if (ConsultaTextBox.Text.Length > 0 && ConsultaDropDownList.Text == "MetaId")
            {
                bool result = Int32.TryParse(ConsultaTextBox.Text, out Id);
                if (Id > 0)
                {
                    MetasGridView.DataSource = meta.Listado(" * ", " MetaId = " + Id, "");
                    MetasGridView.DataBind();
                    if (MetasGridView.Rows.Count <= 0)
                    {
                        HttpContext.Current.Response.Write("<SCRIPT>alert('La Meta No Existe')</SCRIPT>");
                        ConsultaTextBox.Text = "";
                        CargarGridView();
                    }

                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT>alert('Id Incorrecto')</SCRIPT>");
                    ConsultaTextBox.Text = "";
                }

            }

            if (ConsultaDropDownList.Text == "Descripcion")
            {
                MetasGridView.DataSource = meta.Listado(" * ", "Descripcion like '" + ConsultaTextBox.Text + "%'", "");
                MetasGridView.DataBind();
            }
        }
    }
}