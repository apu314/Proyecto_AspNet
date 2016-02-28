using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de conexion
/// </summary>
public class conexion
{
    protected SqlDataAdapter adaptador;
    protected SqlDataReader reader;
    protected DataSet ds;
    protected SqlConnection conn = new SqlConnection();
    public conexion()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public void conectar(string tabla)
    {
        string strConexion = ConfigurationManager.ConnectionStrings["Empresadb"].ConnectionString;
        conn.ConnectionString = strConexion;
        conn.Open();
        adaptador = new SqlDataAdapter("SELECT * FROM " + tabla, conn);
        SqlCommandBuilder ejecutar = new SqlCommandBuilder(adaptador);
        ds = new DataSet();
        adaptador.Fill(ds, tabla);
        conn.Close();
    }

    public DataSet Ds
    {
        set { ds = value; }
        get { return ds; }
    }

    public SqlDataReader Reader
    {
        set { reader = value; }
        get { return reader; }
    }
}