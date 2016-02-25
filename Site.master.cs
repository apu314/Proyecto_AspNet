using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string EmpleadoID = (string)Session["EmpleadoID"];
        if (!IsPostBack)
        {
            if (EmpleadoID == "" || EmpleadoID == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

    }
}
