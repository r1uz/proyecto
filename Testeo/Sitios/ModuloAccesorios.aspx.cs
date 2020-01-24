using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testeo.Sitios
{
    public partial class ModuloAccesorios : System.Web.UI.Page
    {
        string CadenaConexion = "Data Source=(Localdb)\\MSSQLLocalDB;Initial Catalog=Proyecto;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            ConsultarImagenes();
        }

        protected void ConsultarImagenes()
        {
            SqlConnection conexionSQL = new SqlConnection(CadenaConexion);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select imagen, nombre, precio from producto where id_categoriap <> 1 order by id_producto asc";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            DataTable ImagenesBD = new DataTable();
            ImagenesBD.Load(cmd.ExecuteReader());
            Repeater1.DataSource = ImagenesBD;
            Repeater1.DataBind();
            conexionSQL.Close();

        }
    }
}