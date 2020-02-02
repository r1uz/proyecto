using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Testeo.ADO
{
    public class UsuarioADO
    {
        private ProyectoEntities contexto = new ProyectoEntities();



        public UsuarioADO()
        {

        }

        public int agregarUsuario(Usuario u)
        {
            contexto.Usuario.Add(u);
            return contexto.SaveChanges();
        }



    }
}