using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_listarMaterias : System.Web.UI.Page
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
        MySqlDataAdapter adp = new MySqlDataAdapter("select * from materia", conexionBD);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gdvMateria.DataSource = dt;
            gdvMateria.DataBind();
        }
    }

    private void ActualizarActor(string codigo_materia, string nombre, string nivel)
    {
        using (MySqlConnection conexionBD = new MySqlConnection(cadenaConexion))
        {
            //     string datos = Request.QueryString["texto"].ToString();

            string query = "update materia set " +
                "nombre_materia ='" + nombre + "',nivel_materia ='" + nivel  + "' where cod_materia = '" + codigo_materia + "'";

            //"' where cedula_mantenimiento = '" + cedula

            MySqlCommand cmd = new MySqlCommand(query, conexionBD);
            conexionBD.Open();
            cmd.ExecuteNonQuery();
            conexionBD.Close();
            Response.Write("<script languaje='JavaScript'>alert('¡Registro actualizado!')</script>");
        }

    }

    protected void ModificarFila(object sender, GridViewEditEventArgs e)
    {
        gdvMateria.EditIndex = e.NewEditIndex;
        CargarDatos();
    }

    protected void ActualizarFila(object sender, GridViewUpdateEventArgs e)
    {
        string codigo = gdvMateria.DataKeys[e.RowIndex].Value.ToString();

        TextBox txtNombre = (TextBox)gdvMateria.Rows[e.RowIndex].FindControl("txtNombre");
        TextBox txtNivel = (TextBox)gdvMateria.Rows[e.RowIndex].FindControl("txtNivel");

        ActualizarActor(codigo, txtNombre.Text, txtNivel.Text);
        gdvMateria.EditIndex = -1;
        CargarDatos();
    }

    protected void CancelarEdicion(object sender, GridViewCancelEditEventArgs e)
    {
        gdvMateria.EditIndex = -1;
        CargarDatos();
    }
}