using System; 
using System.Collections; 
using System.Configuration; 
using System.Data; 
using System.Linq; 
using System.Web; 
using System.Web.Security; 
using System.Web.UI; 
using System.Web.UI.HtmlControls; 
using System.Web.UI.WebControls; 
using System.Web.UI.WebControls.WebParts; 
using System.Xml.Linq; 
using System.Data.SqlClient;


public partial class Historial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        try
        {
            historialClass historial = new historialClass(0, 0, 0, 0, 0, "");
            historial.Puesto = int.Parse(tbxPuesto.Text.Trim());
            historial.EmpleadoID = int.Parse(Request.Cookies.Get("EmpleadoID").Value);
            historial.CategoriaID = int.Parse(ddlCategoria.SelectedValue);
            historial.AsuntoID = int.Parse(ddlIncidencia.SelectedValue);
            historial.Descripcion = txtaDescripcion.Text;
            historial.Status = 1;
            historial.agregar();
            resu.Text = "La incidencia ha sido registrada correctamente.";
            tbxPuesto.Text = "";
            txtaDescripcion.Text = "";
        }
        catch (SqlException)
        {
            resu.Text = "Ha habido un error con la consulta a la base de datos.";
        }
        catch (FormatException)
        {
            resu.Text = "Ha habido un error al procesar los datos. Introduzca correctamente los datos a enviar.";
        }
    }
}