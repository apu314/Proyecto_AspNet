using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] file = Request.CurrentExecutionFilePath.Split('/');
        string fileName = file[file.Length - 1];
        Response.Write("nombre pagina actual: " + fileName);
    }
}