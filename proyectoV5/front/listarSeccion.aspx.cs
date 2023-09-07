using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_listarSeccion : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CargarDatos();
        }
    }


    public void CargarDatos()
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        MySqlDataAdapter adp = new MySqlDataAdapter("select * from seccion", conexionBD);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gdvSeccion.DataSource = dt;
            gdvSeccion.DataBind();
        }
    }

    private void ActualizarActor(string seccion, string docente)
    {
        using (MySqlConnection conexionBD = new MySqlConnection(cadenaConexion))
        {
            //     string datos = Request.QueryString["texto"].ToString();

            string query = "update materia set " +
                "doce_guia ='" + docente +"' where cod_seccion = '" + seccion + "'";

            //"' where cedula_mantenimiento = '" + cedula

            MySqlCommand cmd = new MySqlCommand(query, conexionBD);
            conexionBD.Open();
            cmd.ExecuteNonQuery();
            conexionBD.Close();
            
        }

    }

    protected void ModificarFila(object sender, GridViewEditEventArgs e)
    {
        gdvSeccion.EditIndex = e.NewEditIndex;
        CargarDatos();
    }

    protected void ActualizarFila(object sender, GridViewUpdateEventArgs e)
    {
        string codigo = gdvSeccion.DataKeys[e.RowIndex].Value.ToString();

        TextBox txtNivel = (TextBox)gdvSeccion.Rows[e.RowIndex].FindControl("txtDocente");

        ActualizarActor(codigo, txtNivel.Text);
        gdvSeccion.EditIndex = -1;
        CargarDatos();
    }

    protected void CancelarEdicion(object sender, GridViewCancelEditEventArgs e)
    {
        gdvSeccion.EditIndex = -1;
        CargarDatos();
    }
}