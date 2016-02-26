using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void validaUsuario(object sender, AuthenticateEventArgs e)
    {
        if (FormsAuthentication.Authenticate(Login1.UserName, Login1.Password) || autentificacion.autenticar(Login1.UserName, Login1.Password))
        {
            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
        }
    }
}