﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Testeo.ADO
{
    public class ProductoADO
    {
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
            contexto.Producto.Remove(p);
            return contexto.SaveChanges();
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
            var query = from p in contexto.Producto.Include("Categoria") where p.stock>=1 select p;
            return query.ToList();
             
        }
    }
}