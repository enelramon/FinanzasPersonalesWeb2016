﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanzasPersonalesWeb
{
    public static class Utilitarios
    {
        public static void ShowToastr(this Page page, string message, string title, string type = "info")
        {
            page.ClientScript.RegisterStartupScript(page.GetType(), "toastr_message",
                  String.Format("toastr.{0}('{1}', '{2}');", type.ToLower(), message, title), addScriptTags: true);
        }

        public static int ToInt(string texto)
        {
            int valor = 0;

            int.TryParse(texto, out valor);

            return valor;
        }
    }
}