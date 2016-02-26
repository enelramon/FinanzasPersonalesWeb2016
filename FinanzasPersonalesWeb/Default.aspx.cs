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

            Cuentas cuenta = new Cuentas();
            yourRepeater.DataSource = cuenta.Listado(" * "," 1=1 ","");
            Repeater1.DataSource = cuenta.Listado(" * ", " 1=1 ", "");
            Repeater2.DataSource = cuenta.Listado(" * ", " 1=1 ", "");
            Repeater3.DataSource = cuenta.Listado(" * ", " 1=1 ", "");
            Repeater1.DataBind();
            Repeater2.DataBind();
            Repeater3.DataBind();
            yourRepeater.DataBind();
        }
    }
}