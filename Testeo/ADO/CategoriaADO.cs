using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Testeo.ADO
{

    public class CategoriaADO
    {
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