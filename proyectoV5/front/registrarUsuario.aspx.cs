using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class front_registrarUsuario : System.Web.UI.Page
{

    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;


    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btn_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into usuario_mantenimiento values ('"
          + this.txtCedula.Text + "','"+this.txtNombre.Text+"','"+this.txtAp1.Text+"','"+this.txtAp2.Text
          +"','"+txtCodigo_Usuario.Text+"')", conexionBD);

        MySqlCommand cmd2 = new MySqlCommand("insert into usuario(tipo_usuario,cod_usuario) values(' "
            + txtTipo_uSUARIO.Text + "','" + txtCodigo_Usuario.Text + "')", conexionBD);

        MySqlDataReader usuario = cmd2.ExecuteReader();
        conexionBD.Close();
        conexionBD.Open();
        MySqlDataReader registro = cmd.ExecuteReader();
       

        
        if (registro.Read()&& usuario.Read())
        {
            Response.Write("los datos han sido guardados");

            txtAp1.Text = "";
            txtAp2.Text = "";
            txtCedula.Text = "";
            txtCodigo_Usuario.Text = "";
            txtNombre.Text = "";
            txtTipo_uSUARIO.Text = "";
        }
        else
        {
            Response.Write("! Lo sentimos algo ha salido mal ¡");
        }
        conexionBD.Close();
    }
}