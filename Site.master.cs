using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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

        if (Session.SessionID == null && fileName != "Login.aspx")
        {
            Response.Redirect("Login.aspx");
        }
    }
}
