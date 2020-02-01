using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Testeo.ADO
{
    public class Detalle_ReservaADO
    {
        private ProyectoEntities contexto = new ProyectoEntities();

        public Detalle_ReservaADO()
        {

        }

        public int agregarDetalleReserva(Detalle_Reserva nueva)
        {
            contexto.Detalle_Reserva.Add(nueva);
            return contexto.SaveChanges();
        }

        public Detalle_Reserva buscarDetalleReserva(int codigo)
        {

            return contexto.Detalle_Reserva.Find(codigo);
        }

        public List<Detalle_Reserva> getDetalleReservas()
        {
            return contexto.Detalle_Reserva.ToList();
        }

        public int eliminarDetalleReserva(int codigo)
        {
            Detalle_Reserva dr = contexto.Detalle_Reserva.Find(codigo);
            contexto.Detalle_Reserva.Remove(dr);
            return contexto.SaveChanges();
        }

        public int actualizarDetalleReserva(Detalle_Reserva nueva)
        {
            Detalle_Reserva dr = contexto.Detalle_Reserva.Find(nueva.id_dr);
            dr = nueva;
            return contexto.SaveChanges();
        }

    }
}