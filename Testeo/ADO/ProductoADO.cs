using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace Testeo.ADO
{
    public class ProductoADO
    {
        string CadenaConexion = "Data Source=(Localdb)\\MSSQLLocalDB;Initial Catalog=Proyecto;Integrated Security=True";

        private ProyectoEntities contexto = new ProyectoEntities();

        public ProductoADO()
        {

        }
        public int agregarProducto(Producto p)
        {
            contexto.Producto.Add(p);
            return contexto.SaveChanges();
        }

        public Producto buscarProducto(int codigo)
        {
            return contexto.Producto.Find(codigo);
        }

        public int eliminarProducto(int codigo)
        {
            Producto p = contexto.Producto.Find(codigo);

            Detalle_Reserva DR = new Detalle_Reserva();
            DR.id_producto_d = codigo;



            SqlConnection cn = new SqlConnection(CadenaConexion);
            cn.Open();
            var cmd = new SqlCommand("select id_producto_d from Detalle_Reserva where id_producto_d=@id", cn);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = codigo;
            cmd.Connection = cn;
            int idprod = Convert.ToInt32(cmd.ExecuteScalar());


            if (idprod!=0)

            {

                Console.WriteLine("no puede realizar la eliminaciòn, ya que el producto esta reservado");

                return contexto.SaveChanges();

            }
            else
            {
                contexto.Producto.Remove(p);
                return contexto.SaveChanges();


            }
        }
        public int actualizar(Producto nuevo)
        {
            Producto p = contexto.Producto.Find(nuevo.id_categoriap);
            p = nuevo;
            return contexto.SaveChanges();
        }

        public List<Producto> getProductos()
        {
            var query = from p in contexto.Producto.Include("Categoria") select p;
            return query.ToList();

        }

        public List<Producto> getProductosByStock()
        {
            var query = from p in contexto.Producto.Include("Categoria") where p.stock >= 1 select p;
            return query.ToList();

        }


    }
}