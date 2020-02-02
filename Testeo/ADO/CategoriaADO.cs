using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Testeo.ADO
{

    public class CategoriaADO
    {
        string CadenaConexion = "Data Source=(Localdb)\\MSSQLLocalDB;Initial Catalog=Proyecto;Integrated Security=True";

        private ProyectoEntities contexto = new ProyectoEntities();


        public CategoriaADO()
        {

        }
        public int agregarCategoria(Categoria nueva)
        {
            contexto.Categoria.Add(nueva);
            return contexto.SaveChanges();
        }

        public Categoria buscarCategoria(int codigo)
        {
            return contexto.Categoria.Find(codigo);
        }

        public List<Categoria> getCategorias()
        {
            return contexto.Categoria.ToList();
        }

        public int eliminarCategoria(int codigo)
        {


            SqlConnection cn = new SqlConnection(CadenaConexion);
            cn.Open();
            var cmd = new SqlCommand("select p.id_producto  from Producto p join Categoria c on " +
                "(p.id_categoriap=c.id_categoria) where c.id_categoria=@id", cn);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = codigo;
            cmd.Connection = cn;
            int idprod = Convert.ToInt32(cmd.ExecuteScalar());


            if (idprod != 0)

            {
                return contexto.SaveChanges();
            }


            Categoria c = contexto.Categoria.Find(codigo);
                contexto.Categoria.Remove(c);
                return contexto.SaveChanges();

        }
           
        

        public int actualizarCategoria(Categoria nueva)
        {
            Categoria c = contexto.Categoria.Find(nueva.id_categoria);
            c = nueva;
            return contexto.SaveChanges();
        }

       
    }
}