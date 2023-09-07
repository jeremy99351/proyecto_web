using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_registrarEstudiante : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarDDL();
        }
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into usuario_estudiante values ('"
          + this.txtCedula.Text + "','" + this.txtNombre.Text + "','" + this.txtAp1.Text + "','" + this.txtAp2.Text
          + "','" + ddlUsuario.SelectedValue.ToString() + "','" + ddlSeccion.SelectedValue.ToString() + "','" + txtCorreo.Text + "')", conexionBD);



        cmd.ExecuteReader();

        Response.Write("los datos han sido guardados");

        txtAp1.Text = "";
        txtAp2.Text = "";
        txtCedula.Text = "";

        txtNombre.Text = "";
        txtCorreo.Text = "";

        conexionBD.Close();
    }

    public void cargarDDL()
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

        using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM usuario"))
        {
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionBD;

            conexionBD.Open();
            ddlUsuario.DataSource = cmd.ExecuteReader();
            ddlUsuario.DataTextField = "tipo_usuario";
            ddlUsuario.DataValueField = "cod_usuario";
            ddlUsuario.DataBind();

            conexionBD.Close();

        }
        using (MySqlCommand cmd = new MySqlCommand("select * from seccion"))
        {
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionBD;

            conexionBD.Open();
            ddlSeccion.DataSource = cmd.ExecuteReader();
            ddlSeccion.DataTextField = "cod_seccion";
            ddlSeccion.DataValueField = "cod_seccion";
            ddlSeccion.DataBind();

            conexionBD.Close();
        }


        // ddlUsuario.Items.Insert(0, new ListItem("--Select Customer--", "0"));

    }
}