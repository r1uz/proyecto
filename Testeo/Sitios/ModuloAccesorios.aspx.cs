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
            cmd.CommandText = "Select p.id_producto, p.imagen, p.nombre, p.precio, p.descripcion, c.nombre from producto p join Categoria c on(p.id_categoriap= c.id_categoria) where c.nombre NOT like 'Escritorios' order by id_producto asc";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            DataTable ImagenesBD = new DataTable();
            ImagenesBD.Load(cmd.ExecuteReader());
            Repeater1.DataSource = ImagenesBD;
            Repeater1.DataBind();
            conexionSQL.Close();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModuloEscritorios.aspx");
        }


    }
}