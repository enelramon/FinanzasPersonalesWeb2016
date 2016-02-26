using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanzasPersonalesWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < 10; i++)
            {
                Label1.Text += @" <div class=""panel panel-default"">    < div class=""panel-body"">Panel Content</div>  </div>";
            }
        }
    }
}