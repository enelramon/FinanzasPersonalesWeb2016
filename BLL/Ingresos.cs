using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Ingresos : ClaseMaestra
    {
        public int IngresoId { get; set; }
        public double Monto { get; set; }
        public int MiembroId { get; set; }
        public int CuentaId { get; set; }
        public int TipoIngresoId { get; set; }

        public override bool Buscar(int IdBuscado)
        {
            throw new NotImplementedException();
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool Insertar()
        {
            throw new NotImplementedException();
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb Conexion = new ConexionDb();

            string OrdenFinal = " ";

            if (!Orden.Equals(""))
            {
                OrdenFinal = " Orden by " + Orden;
            }

            return Conexion.ObtenerDatos("select " + Campos + " from Ingresos where " + Condicion + " " + OrdenFinal);
        }
    }
}
