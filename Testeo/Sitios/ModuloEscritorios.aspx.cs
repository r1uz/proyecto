﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testeo.Sitios
{
    public partial class ModuloEscritorios : System.Web.UI.Page
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
            cmd.CommandText = "Select p.imagen, p.nombre, p.precio, p.id_producto, p.descripcion from producto p join categoria c on (p.id_categoriap=c.id_categoria) where c.nombre= 'Escritorios'  order by id_producto asc";
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
            Response.Redirect("ModuloAccesorios.aspx");
        }

        protected void btn_reserva_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReservaWeb.aspx");
        }

    }
}