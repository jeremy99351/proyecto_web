using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IdentityModel.Tokens;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_registrarUsencia : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListItem i;
            i = new ListItem("Presente", "P");
            DropDownList1.Items.Add(i);
            i = new ListItem("Tardia", "T");
            DropDownList1.Items.Add(i);
            i = new ListItem("Tardia Justificada", "TJ");
            DropDownList1.Items.Add(i);
            i = new ListItem("Ausencia", "A");
            DropDownList1.Items.Add(i);
            i = new ListItem("Ausencia Justificada", "AJ");
            DropDownList1.Items.Add(i);
        }

       

    }

    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

        MySqlDataAdapter adp = new MySqlDataAdapter("select * from aucensia", conexionBD);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        var cont = 0;
        if (dt.Rows.Count > 0)
        {
            cont = cont + 1;
            //gdvUsuarios.DataSource = dt;
            //gdvUsuarios.DataBind();
        }

        //DateTime thisDate1 = Convert.ToDateTime("yyyy,mm,dd");
        //Console.WriteLine("Today is " + thisDate1.ToString("MMMM dd, yyyy") + ".");

         
        

        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into aucensia  (fecha,tipo_au,cant_au,cedula_estudiante,cod_materia) values ('"
          + cldFecha.SelectedDate.ToShortDateString() + "','" + DropDownList1.SelectedItem.Value.ToString() + "',' " + Convert.ToInt32(txtCantidad.Text) +
          "','" + txtEstudiante.Text + "','" + txtMateria.Text + "')", conexionBD);

        cmd.ExecuteReader();

        Response.Write("<script languaje='JavaScript'>alert('¡Los datos han sido guardados!')</script>");

        conexionBD.Close();

    }
}