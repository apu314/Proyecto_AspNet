using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de AdminToolsClass
/// </summary>
public class AdminToolsClass : conexion
{
    //nombre de la tabla
    string tabla = "Empleados";
    //declaracion de variables que se van a usar para las propiedades del contructor.
    protected int empleadoID, departamentoID;
    protected string nombre, username, direccion, ciudad, estado, postal, telefono, extension, telfMobil;
    //contructor AdminToolsClass
    public AdminToolsClass(int empleadoID, int departamentoID, string nombre, string username, string direccion, string ciudad, string estado, string postal, string telefono, string extension, string telfMobil)
    {
        this.empleadoID = empleadoID;
        this.departamentoID = departamentoID;
        this.nombre = nombre;
        this.username = username;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.estado = estado;
        this.postal = postal;
        this.telefono = telefono;
        this.extension = extension;
        this.telfMobil = telfMobil;
    }
    //recojo las variables para asignarles valores a las propiedades del constructor.

    public int EmpleadoID
    {
        set { empleadoID = value; }
        get { return empleadoID; }
    }

    public int DepartamentoID
    {
        set { departamentoID = value; }
        get { return departamentoID; }
    }

    public string Nombre
    {
        set { nombre = value; }
        get { return nombre; }
    }

    public string Username
    {
        set { username = value; }
        get { return username; }
    }

    public string Direccion
    {
        set { username = value; }
        get { return username; }
    }

    public string Ciudad
    {
        set { ciudad = value; }
        get { return ciudad; }
    }

    public string Estado
    {
        set { ciudad = value; }
        get { return ciudad; }
    }

    public string Postal
    {
        set { postal = value; }
        get { return postal; }
    }

    public string Telefono
    {
        set { telefono = value; }
        get { return telefono; }
    }

    public string Extension
    {
        set { extension = value; }
        get { return extension; }
    }

    public string TelfMobil
    {
        set { telfMobil = value; }
        get { return telfMobil; }
    }

    //Compruebo si el empleado existe en la base de datos y devuelvo true si es verdadero y false en el caso contrario.
    public bool existe(int valor)
    {
        conectar(tabla);
        DataRow fila;
        int x = ds.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i < x; i++)
        {
            fila = ds.Tables[tabla].Rows[i];
            if (int.Parse(fila["EmpleadoID"].ToString()) == valor)
            {
                EmpleadoID = int.Parse(fila["EmpleadoID"].ToString());
                DepartamentoID = int.Parse(fila["DepartamentoID"].ToString());
                Nombre = fila["Nombre"].ToString();
                Username = fila["Username"].ToString();
                Direccion = fila["Direccion"].ToString();
                Ciudad = fila["Ciudad"].ToString();
                Estado = fila["Estado"].ToString();
                Postal = fila["Postal"].ToString();
                Telefono = fila["Telefono"].ToString();
                Extension = fila["Extension"].ToString();
                TelfMobil = fila["TelfMobil"].ToString();
                return true;
            }
        }
        return false;
    }

    public bool eliminar(int valor)
    {
        conectar(tabla);
        DataRow fila;
        int x = ds.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = ds.Tables[tabla].Rows[i];
            if (int.Parse(fila["EmpleadoID"].ToString()) == valor)
            {
                fila = ds.Tables[tabla].Rows[i];
                fila.Delete();
                DataTable tablaBorrada;
                tablaBorrada = ds.Tables[tabla].GetChanges(DataRowState.Deleted);
                adaptador.Update(tablaBorrada);
                ds.Tables[tabla].AcceptChanges();
                return true;
            }
        }
        return false;
    }
}