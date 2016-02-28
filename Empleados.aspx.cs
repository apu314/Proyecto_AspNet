using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Empleados : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string trabajadores = "";
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["Empresadb"].ConnectionString;
        //comando select
        SqlCommand cmd = new SqlCommand("SELECT [EmpleadoID], [Nombre], [TelfMobil] FROM Empleados", conn);
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader(); ;
        while (reader.Read())
        {
            object ID = reader["EmpleadoID"];
            object Nom = reader["Nombre"];
            object Telf = reader["TelfMobil"];
            trabajadores += "<p>EmpleadoID: <b>" +ID+ "</b><br />Nombre: <b>" + Nom + "</b><br />Teléfono móvil: <b>" +Telf + "</b><hr></p>";
        }
        reader.Close();
        conn.Close();
        muestraTrabajadores(trabajadores);
    }

    public void muestraTrabajadores(string trabajadores)
    {
        empleados.Text = trabajadores;
    }
}