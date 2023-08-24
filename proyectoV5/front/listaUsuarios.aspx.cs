using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_listaUsuarios : System.Web.UI.Page
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
        MySqlDataAdapter adp = new MySqlDataAdapter("select cedula_mantenimiento,primer_apellido," +
            "segundo_apellido,cod_usuario,nombre,correo from usuario_mantenimiento", conexionBD);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gdvUsuarios.DataSource = dt;
            gdvUsuarios.DataBind();
        }
    }

    private void ActualizarActor(string nombre, string ap1, string cedula, string ap2, string codigo, string correo)
    {
        using (MySqlConnection conexionBD = new MySqlConnection(cadenaConexion))
        {

            string query = "update usuario_mantenimiento set " +
                "nombre ='"+ nombre + "',primer_apellido ='" + ap1 + "',segundo_apellido = ' " + ap2
                + "',cod_usuario ='" + codigo + "', correo ='" + correo  + "'";

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
        gdvUsuarios.EditIndex = e.NewEditIndex;
        CargarDatos();
    }

    protected void ActualizarFila(object sender, GridViewUpdateEventArgs e)
    {
        string codigo = gdvUsuarios.DataKeys[e.RowIndex].Value.ToString();

        TextBox txtNombre = (TextBox)gdvUsuarios.Rows[e.RowIndex].FindControl("txtNombre");
        TextBox txtAp1 = (TextBox)gdvUsuarios.Rows[e.RowIndex].FindControl("txtAp1");
        TextBox txtAp2 = (TextBox)gdvUsuarios.Rows[e.RowIndex].FindControl("txtAp2");
        TextBox txtCedula = (TextBox)gdvUsuarios.Rows[e.RowIndex].FindControl("txtCedula");
        TextBox txtCorreo = (TextBox)gdvUsuarios.Rows[e.RowIndex].FindControl("txtCorreo");

        ActualizarActor(codigo, txtNombre.Text, txtAp1.Text, txtAp2.Text, txtCedula.Text, txtCorreo.Text);
        gdvUsuarios.EditIndex = -1;
        CargarDatos();
    }
}