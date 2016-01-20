using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    class PresupuestoDetalle : ClaseMaestra
    {
        public int PresupuestoDetalleId { get; set; }
        public int PresupuestoId { get; set; }
        public int TipoEgresoId { get; set; }
        public float Monto { get; set; }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();


            dt = conexion.ObtenerDatos(String.Format("Select * From PresupuestoDetalle Where PresupuestoDetalleId = {0}", IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.PresupuestoDetalleId = (int)dt.Rows[0]["PresupuestoId"];
                this.PresupuestoId = (int)dt.Rows[0]["PresupuestoId"];
                this.TipoEgresoId = (int)dt.Rows[0]["TipoEgresoId"];
                this.Monto = (float)dt.Rows[0]["Monto"];
            }
            return dt.Rows.Count > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Update PresupuestoDetalle Set PresupuestoId = {0}, TipoEgresoId = {1}, Monto = {2} ", this.PresupuestoId, this.TipoEgresoId, this.Monto));
            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Delete from PresupuestoDetalle Where PresupuestoDetalleId = {0}", this.PresupuestoDetalleId));
            return retorno;
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Insert Into PresupuestoDetalle (PresupuestoId, TipoEgresoId, Monto) Values ({0},{1},{2})", this.PresupuestoId, this.TipoEgresoId, this.Monto));
            return retorno;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string OrdenFinal = "";

            if (!Orden.Equals(""))
            {
                OrdenFinal = " Order by " + Orden;
            }
            return conexion.ObtenerDatos("select " + Campos + " from PresupuestoDetalle where " + Condicion + " " + OrdenFinal);
        }
    }
}
