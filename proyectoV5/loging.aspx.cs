using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


public partial class _Default : System.Web.UI.Page
{

    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("select nombre,primer_apellido,cod_usuario from usuario_mantenimiento where cedula_mantenimiento ='"
          + this.txtUser.Text + "'" + "and cod_usuario ='" + this.txtPassword.Text + "'", conexionBD);
        MySqlDataReader registro = cmd.ExecuteReader();



        if (registro.Read())
        {
            lblMensaje.Text = "Nombre: " + registro["nombre"] + "<br>"
                + "Apellidos = " + registro["primer_apellido"] + "<br>"
                + "Codigo = " + registro["cod_usuario"];

            string valor = txtUser.Text.Trim();
            Response.Redirect("front/listaUsuarios.aspx?texto="+valor);
            //Response.Redirect("front/listaUsuarios.aspx?texto="+valor);
        }
        else
        {
            lblMensaje.Text = "¡No existe un usuario registrado !";
        }
        conexionBD.Close();
    }

    //public void datos(string i)
    //{

    //    string valor = txtValor.Text.Trim();


    //}  

}