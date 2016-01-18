using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace FinanzasPersonalesWeb
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string _connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        //todo: Arreglar esto..
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_Authenticate(Object sender, AuthenticateEventArgs e)
        {

            bool isAuthenticated = false;
            using (SqlConnection conn = new SqlConnection(_connStr))
            {
                string sql = "Select UsuarioId from Usuarios Where Usuario = @Usuario and Contrasena = @Contrasena";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@Usuario", Login1.UserName);
                    cmd.Parameters.AddWithValue("@Contrasena", Login1.Password);
                    conn.Open();

                    Object obj = cmd.ExecuteScalar();
                    conn.Close();
                    if (obj != null)
                    {
                        isAuthenticated = true;
                    }
                    if (isAuthenticated)
                    {
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                    }
                }
            }
        }
    }
}