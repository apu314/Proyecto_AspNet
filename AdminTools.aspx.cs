using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminTools : System.Web.UI.Page
{
    //variable de conexion donde se almacena la cadena de conexion más tarde.
    protected SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["administrador"] == null)
        {
            Response.Write("<script language=\"javascript\">history.back();</script>");
        }
        //no se hace nada.
    }

    protected void btnMuestraEmpleado_Click(object sender, EventArgs e)
    {
        AdminToolsClass busca = new AdminToolsClass(0, 0, "", "", "", "", "", "", "", "", "");
        if (busca.existe(int.Parse(ddlEmpleado.SelectedValue)))
        {
            tbxciudad.Text = busca.Ciudad;
            tbxdireccion.Text = busca.Direccion;
            tbxestado.Text = busca.Estado;
            tbxextension.Text = busca.Extension;
            tbxmovil.Text = busca.TelfMobil;
            tbxnombre.Text = busca.Nombre;
            tbxpostal.Text = busca.Postal;
            tbxtelefono.Text = busca.Telefono;
            tbxusuario.Text = busca.Username;
        }
        else
        {
            resu.Text = "Se ha detectado un error en la búsqueda del empleado. Tu búsqueda no coincide con ningun registro de la base de datos.";
        }
    }



    protected void btnBorra_Click(object sender, EventArgs e)
    {
        AdminToolsClass busca = new AdminToolsClass(0, 0, "", "", "", "", "", "", "", "", "");
        if (busca.eliminar(int.Parse(ddlEmpleado.SelectedValue)))
        {
            resu.Text = "El empleado seleccionado ha sido eliminado.";
        }
        else
        {
            resu.Text = "No hemos podido eliminar al empleado seleccionado. Prueba de nuevo o contacta con el administrador.";
        }
    }

    protected void btnActualiza_Click(object sender, EventArgs e)
    {
        string strConexion = ConfigurationManager.ConnectionStrings["Empresadb"].ConnectionString;
        conn.ConnectionString = strConexion;
        SqlCommand update = new SqlCommand("UPDATE Empleados SET Nombre = @Nombre, Username = @Username, Direccion = @Direccion, Ciudad = @Ciudad, Estado = @Estado, Postal = @Postal, Telefono = @Telefono, Extension = @Extension, TelfMobil = @TelfMobil WHERE EmpleadoID = @EmpleadoID", conn);
        update.Parameters.Add(new SqlParameter("@Nombre", SqlDbType.VarChar, 10, "Nombre"));
        update.Parameters.Add(new SqlParameter("@Username", SqlDbType.VarChar, 10, "Username"));
        update.Parameters.Add(new SqlParameter("@Direccion,", SqlDbType.VarChar, 80, "Direccion"));
        update.Parameters.Add(new SqlParameter("@Ciudad", SqlDbType.VarChar, 80, "Ciudad"));
        update.Parameters.Add(new SqlParameter("@Estado", SqlDbType.VarChar, 80, "Estado"));
        update.Parameters.Add(new SqlParameter("@Postal", SqlDbType.VarChar, 50, "Postal"));
        update.Parameters.Add(new SqlParameter("@Telefono", SqlDbType.VarChar, 50, "Telefono"));
        update.Parameters.Add(new SqlParameter("@Extension", SqlDbType.VarChar, 50, "Extension"));
        update.Parameters.Add(new SqlParameter("@TelfMobil", SqlDbType.VarChar, 50, "TelfMobil"));
        update.Parameters.Add(new SqlParameter("@EmpleadoID", SqlDbType.VarChar, 50, "EmpleadoID"));
        //a los parametro le asigno el contenido de los textbox.
        update.Parameters["@Nombre"].Value = tbxnombre.Text.Trim();
        update.Parameters["@Username"].Value = tbxusuario.Text.Trim();
        update.Parameters["@Direccion"].Value = tbxdireccion.Text.Trim();
        update.Parameters["@Ciudad"].Value = tbxciudad.Text.Trim();
        update.Parameters["@Estado"].Value = tbxestado.Text.Trim();
        update.Parameters["@Postal"].Value = tbxpostal.Text.Trim();
        update.Parameters["@Telefono"].Value = tbxtelefono.Text.Trim();
        update.Parameters["@Extension"].Value = tbxextension.Text.Trim();
        update.Parameters["@TelfMobil"].Value = tbxmovil.Text.Trim();
        update.Parameters["@EmpleadoID"].Value = Convert.ToInt32(ddlEmpleado.SelectedValue);
        conn.Open();
        update.ExecuteNonQuery();
        conn.Close();
    }
}