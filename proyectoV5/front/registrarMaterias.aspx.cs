using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_registrarMaterias : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into materia values ('"
          + this.txtCodigo.Text + "','" + this.txtNombre.Text + "',' " + this.txtNivel.Text + "')", conexionBD);

        cmd.ExecuteReader();

        Response.Write("<script languaje='JavaScript'>alert('¡Los datos han sido guardados!')</script>");

        txtCodigo.Text = "";
        txtNombre.Text = "";
        txtNivel.Text = "";

        conexionBD.Close();
    }
}