using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Clase que se encargará de autentificar a los usuarios.
/// </summary>
public class Autentificacion
{
    public static bool Autenticar(string usuario, string password)
    {
        //Consulta a la base de datos.
        string sql = @"SELECT COUNT(*) FROM Empleados Where Username = @Username AND Password = @Password";
        //Cadena de conexión.
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["EmpresadbConnectionStringLogin"].ToString()))
        {
            //Abrimos la conexión.
            conn.Open();
            //Guardamos la instrucción (consulta + cadena de conexión) en un objeto de tipo SqlCommand. Le pasamos la consulta a la base de datos (sql) y la cadena de conexión (conn).
            SqlCommand cmd = new SqlCommand(sql, conn);
            //Eniamos los parámetros.
            cmd.Parameters.AddWithValue("@Username", usuario);
            cmd.Parameters.AddWithValue("@Password", password);
            //Devuelve la fila afectada
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count == 0)
                return false;
            else
                return true;
        }
    }
}