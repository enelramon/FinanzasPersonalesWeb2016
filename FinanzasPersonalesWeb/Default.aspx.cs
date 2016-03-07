using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace FinanzasPersonalesWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //for (int i = 0; i < 10; i++)
            //{
            //    Label1.Text += @" <div class=""panel panel-default"">    < div class=""panel-body"">Panel Content</div>  </div>";
            //}
            if (!IsPostBack)
            {
                LlenarPaneles();
            }           
        }
        
        public void LlenarPaneles()
        {           
            Cuentas cuenta = new Cuentas();
            cuenta.UsuarioId = 8;
            yourRepeater.DataSource = cuenta.ObtenerCuentas();
            yourRepeater.DataBind();
            if (cuenta.ObtenerBalance().Rows.Count > 0)
            {
                BalanceLabel.Text = cuenta.ObtenerBalance().Rows[0]["Balance"].ToString();
            }
            else
            {
                BalanceLabel.Text = "0.00";
            }
        }
    }
}