using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Obtengo el nombre del fichero de la página que se está cargando actualmente.
        string[] file = Request.CurrentExecutionFilePath.Split('/');
        string fileName = file[file.Length - 1];
    }

    protected void btnCerrarSesion_Click(object sender, EventArgs e)
    {
        //borramos las cookies de autentificación (.ASPXAUTH) y de sesión (ASP:NET_Sessionid).
        Session.Abandon();
        var cookieSesion = new HttpCookie("ASP.NET_SessionId");
        cookieSesion.Expires = DateTime.Now.AddDays(-1);
        var cookieAutentificacion = new HttpCookie(".ASPXAUTH");
        cookieAutentificacion.Expires = DateTime.Now.AddDays(-1);
        Response.Cookies.Add(cookieAutentificacion);
        //Response.Cookies[".ASPXAUTH"];
        Response.Redirect("Login.aspx");
    }
}
