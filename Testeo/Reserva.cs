//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Testeo
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reserva
    {
        public Reserva()
        {
            this.Detalle_Reserva = new HashSet<Detalle_Reserva>();
        }
    
        public int id_reserva { get; set; }
        public Nullable<System.DateTime> fecha_reserva { get; set; }
        public Nullable<System.DateTime> fecha_requerida { get; set; }
        public string ciudad { get; set; }
        public string region { get; set; }
        public string direccion { get; set; }
        public Nullable<int> id_usuario { get; set; }
        public Nullable<int> telefono { get; set; }
    
        public virtual ICollection<Detalle_Reserva> Detalle_Reserva { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}
