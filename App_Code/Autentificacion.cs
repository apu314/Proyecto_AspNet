using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Verificación para la autentificación de usuarios en al base de datos.
/// </summary>
public class autentificacion
{
    public static bool autenticar(string usuario, string password)
    {
        //Consulta a la base de datos.
        string sql = @"SELECT COUNT(*) FROM Empleados Where Username = @Username AND Password = @Password";
        //Cadena de conexión.
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Empresadb"].ToString()))
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
            //si es cero no valida porque no existe el usuario. Caso contrario si valida.
            if (count == 0)
            {
                conn.Close();
                return false;
            }
            else
            {
                sql = @"SELECT [EmpleadoID] FROM Empleados Where Username = @Username AND Password = @Password";
                cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Username", usuario);
                cmd.Parameters.AddWithValue("@Password", password);
                SqlDataReader readerEmpleados = cmd.ExecuteReader();
                readerEmpleados.Read();
                //Creo la cookie para almacenar el EmpleadoID.
                HttpCookie cookieEmpleadoID = new HttpCookie("EmpleadoID", readerEmpleados["EmpleadoID"].ToString());
                HttpContext.Current.Response.Cookies.Add(cookieEmpleadoID);
                conn.Close();
                return true;
            }
        }
    }
}