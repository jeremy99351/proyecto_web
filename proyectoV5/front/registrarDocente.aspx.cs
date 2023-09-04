using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_registrarDocente : System.Web.UI.Page
{

    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into usuario_docente values ('"
          + this.txtCedula.Text + "','" + this.txtNombre.Text + "','" + this.txtAp1.Text + "','" + this.txtAp2.Text
          + "','" + txtCodUsuario.Text + "','" + txtCodMateria.Text + "','" + txtCorreo.Text + "')", conexionBD);

        MySqlCommand cmd2 = new MySqlCommand("insert into usuario(tipo_usuario,cod_usuario) values(' "
            + txtTipo_uSUARIO.Text + "','" + txtCodUsuario.Text + "')", conexionBD);



        Response.Write("los datos han sido guardados");

        txtAp1.Text = "";
        txtAp2.Text = "";
        txtCedula.Text = "";
        txtCodUsuario.Text = "";
        txtNombre.Text = "";
        txtTipo_uSUARIO.Text = "";
        txtCodUsuario.Text = "";
        txtCodMateria.Text = "";
        txtCorreo.Text = "";

        conexionBD.Close();
    }
}
