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
            "segundo_apellido,cod_usuario,nombre from usuario_mantenimiento", conexionBD);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gdvUsuarios.DataSource = dt;
            gdvUsuarios.DataBind();
        }
    }
}