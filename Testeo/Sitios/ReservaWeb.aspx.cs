using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Testeo.ADO;

namespace Testeo.Sitios
{
    public partial class ReservaWeb : System.Web.UI.Page
    {
        private ProductoADO adoproducto = new ProductoADO();
        string CadenaConexion = "Data Source=(Localdb)\\MSSQLLocalDB;Initial Catalog=Proyecto;Integrated Security=True";

        private void BindData()
        {
            dlproducto.DataSource = adoproducto.getProductosByStock();
            dlproducto.DataTextField = "nombre";
            dlproducto.DataValueField = "id_producto";
            
            dlproducto.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtreserva.Text = DateTime.Now.ToString();
                BindData();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void btn_reserva_Click(object sender, EventArgs e)
        {
            Detalle_ReservaADO adodr = new Detalle_ReservaADO();
            ReservaADO ado = new ReservaADO();
            Reserva r = new Reserva();
            Detalle_Reserva dr = new Detalle_Reserva();

            if (txtciudad.Text == "" || txtregion.Text == "" || txtdireccion.Text == "" || txttelefono.Text == "")
            {
                lb_descr.Text = "Favor no ingresar campos vacíos";
            }
            else
            {
                SqlConnection cn = new SqlConnection(CadenaConexion);
                cn.Open();
                var cmd = new SqlCommand("select precio from Producto where nombre = @nombre ", cn);
                cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = dlproducto.SelectedItem.Text;
                cmd.Connection = cn;
                int preciof = Convert.ToInt32(cmd.ExecuteScalar());

                var cmd2 = new SqlCommand("update producto set stock = stock - 1 where id_producto = @id", cn);
             
                cmd2.Parameters.Add("@id",SqlDbType.Int).Value= Convert.ToInt32(dlproducto.SelectedItem.Value);
                cmd2.Connection = cn;
                cmd2.ExecuteNonQuery();

                dr.precioFinal = preciof;
                cn.Close();
                dr.id_reserva_d = r.id_reserva;
                dr.nombreProd = dlproducto.SelectedItem.Text;
                dr.id_producto_d = Convert.ToInt32(dlproducto.SelectedItem.Value);
                r.Detalle_Reserva.Add(dr);
                
                r.ciudad = txtciudad.Text.ToUpper();
                r.telefono = Convert.ToInt32(txttelefono.Text);
                r.region = txtregion.Text.ToUpper();
                r.direccion = txtdireccion.Text.ToUpper();
                r.fecha_reserva = DateTime.Now;
                r.fecha_requerida = fecha_req.SelectedDate.Date;

                ado.agregarReserva(r);

             

                
             
                txtciudad.Text = "";
                txtdireccion.Text = "";
                txttelefono.Text = "";
                txtregion.Text = "";

                BindData();
            }
        }
    }
}