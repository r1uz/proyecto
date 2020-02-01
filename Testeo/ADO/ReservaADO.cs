using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Testeo.ADO
{
    public class ReservaADO
    {

        private ProyectoEntities contexto = new ProyectoEntities();

        public ReservaADO()
        {

        }

        public int agregarReserva(Reserva nueva)
        {
            contexto.Reserva.Add(nueva);
            return contexto.SaveChanges();
        }

        public Reserva buscarReserva(int codigo)
        {
            return contexto.Reserva.Find(codigo);
        }

        public List<Reserva> getReservas()
        {
            return contexto.Reserva.ToList();
        }

        public int eliminarReserva(int codigo)
        {
            Reserva r = contexto.Reserva.Find(codigo);
            contexto.Reserva.Remove(r);
            return contexto.SaveChanges();
        }

        public int actualizarReserva (Reserva nueva)
        {
            Reserva r = contexto.Reserva.Find(nueva.id_reserva);
            r = nueva;
            return contexto.SaveChanges();
        }
    }
}