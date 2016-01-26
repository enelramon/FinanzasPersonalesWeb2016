using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class PresupuestoDetalle
    {

        public int TipoEgresoId { get; set; }
        public float Monto { get; set; }

        public PresupuestoDetalle(int TipoEgresoId, float Monto)
        {
            this.TipoEgresoId = TipoEgresoId;
            this.Monto = Monto;
        }
    }
}