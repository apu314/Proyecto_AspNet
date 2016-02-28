using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de historialClass
/// </summary>
public class historialClass : conexion
{
    //Declaración de nombre tabla y variables protegidas para el constructor historialClass.
    string tabla = "Historial";
    protected int empleadoID, puesto, categoriaID, asuntoID, status;
    protected string descripcion;
    //constructor.
    public historialClass(int empleadoID, int puesto, int categoriaID, int asuntoID, int status, string descripcion)
    {
        this.empleadoID = empleadoID;
        this.puesto = puesto;
        this.categoriaID = categoriaID;
        this.asuntoID = asuntoID;
        this.status = status;
        this.descripcion = descripcion;
    }
    //recojo y seteo las propiedades del constructor historialClass.
    public int EmpleadoID
    {
        set { empleadoID = value; }
        get { return empleadoID; }
    }

    public int Puesto
    {
        set { puesto = value; }
        get { return puesto; }
    }

    public int CategoriaID
    {
        set { categoriaID = value; }
        get { return categoriaID; }
    }

    public int AsuntoID
    {
        set { puesto = value; }
        get { return puesto; }
    }

    public int Status
    {
        set { status = value; }
        get { return status; }
    }

    public string Descripcion
    {
        set { descripcion = value; }
        get { return descripcion; }
    }

    public void agregar()
    {
        conectar(tabla);
        DataRow fila;
        fila = ds.Tables[tabla].NewRow();
        fila["EmpleadoID"] = EmpleadoID;
        fila["Puesto"] = Puesto;
        fila["CategoriaID"] = CategoriaID;
        fila["AsuntoID"] = AsuntoID;
        fila["Descripcion"] = Descripcion;
        fila["StatusID"] = Status;
        ds.Tables[tabla].Rows.Add(fila);
        adaptador.Update(ds, tabla);
    }
}