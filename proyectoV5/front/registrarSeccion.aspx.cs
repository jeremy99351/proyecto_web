using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_registrarSeccion : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarDDL();
        }
    }

    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into seccion values ('"
          + this.txtGrupo.Text + "','" + ddlDocente.SelectedValue.ToString() + "')", conexionBD);

        cmd.ExecuteReader();



        txtGrupo.Text = "";
      
        

        conexionBD.Close();
    }

    public void cargarDDL()
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

        using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM usuario_docente"))
        {
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionBD;

            conexionBD.Open();
            ddlDocente.DataSource = cmd.ExecuteReader();
            ddlDocente.DataTextField = "nombre";
            ddlDocente.DataValueField = "cedula_docente";
            ddlDocente.DataBind();

            conexionBD.Close();

        }
    }
}
