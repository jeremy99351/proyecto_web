using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_listaDocente : System.Web.UI.Page
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
        MySqlDataAdapter adp = new MySqlDataAdapter("select * from usuario_docente", conexionBD);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gdvDocente.DataSource = dt;
            gdvDocente.DataBind();
        }
    }

    private void ActualizarActor(string cedula, string nombre, string ap1, string ap2, string codigo,string codM ,string correo)
    {
        using (MySqlConnection conexionBD = new MySqlConnection(cadenaConexion))
        {
            //     string datos = Request.QueryString["texto"].ToString();

            string query = "update usuario_docente set " +
                "nombre ='" + nombre + "',primer_apellido ='" + ap1 + "',segundo_apellido = ' " + ap2
                + "', cod_usuario='" + codigo + "', cod_materia ='"+ codM + "', correo ='" + correo + "' where cedula_docente= '" + cedula + "'";

            //"' where cedula_mantenimiento = '" + cedula

            MySqlCommand cmd = new MySqlCommand(query, conexionBD);
            conexionBD.Open();
            cmd.ExecuteNonQuery();
            conexionBD.Close();
            
        }

    }

    protected void ModificarFila(object sender, GridViewEditEventArgs e)
    {
        gdvDocente.EditIndex = e.NewEditIndex;
        CargarDatos();
    }

    protected void ActualizarFila(object sender, GridViewUpdateEventArgs e)
    {
        string codigo = gdvDocente.DataKeys[e.RowIndex].Value.ToString();

        TextBox txtNombre = (TextBox)gdvDocente.Rows[e.RowIndex].FindControl("txtNombre");
        TextBox txtAp1 = (TextBox)gdvDocente.Rows[e.RowIndex].FindControl("txtAp1");
        TextBox txtAp2 = (TextBox)gdvDocente.Rows[e.RowIndex].FindControl("txtAp2");
        TextBox txtCod = (TextBox)gdvDocente.Rows[e.RowIndex].FindControl("txtCod");
        TextBox txtCodM = (TextBox)gdvDocente.Rows[e.RowIndex].FindControl("txtCodM");
        TextBox txtCorreo = (TextBox)gdvDocente.Rows[e.RowIndex].FindControl("txtCorreo");

        ActualizarActor(codigo, txtNombre.Text, txtAp1.Text, txtAp2.Text, txtCod.Text, txtCodM.Text, txtCorreo.Text);
        gdvDocente.EditIndex = -1;
        CargarDatos();
    }

    protected void CancelarEdicion(object sender, GridViewCancelEditEventArgs e)
    {
        gdvDocente.EditIndex = -1;
        CargarDatos();
    }

}