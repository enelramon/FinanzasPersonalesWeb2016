using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
   public class Egresos:ClaseMaestra
   {
        public int EgresoId { get; set; }
        public string Fecha { get; set; }
        public int CuentaId { get; set; }
        public float Monto { get; set; }
        public int MiembroId { get; set; }
        public int TipoEgresoId { get; set; }
        public string Observacion { get; set; }

        public Egresos()
        {
            this.EgresoId = 0;
            this.Fecha = "";
            this.CuentaId = 0;
            this.Monto = 0.0f;
            this.MiembroId = 0;
            this.TipoEgresoId = 0;
            this.Observacion = "";
        }

        public override bool Insertar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();

            retorno = conexion.Ejecutar(String.Format("Insert into Egresos(Fecha,CuentaId,Monto,TipoEgresoId) values('{0}',{1},{2},{3})",this.Fecha,this.CuentaId,this.Monto,this.TipoEgresoId));

            return retorno;
        }

        public override bool Editar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();
            
            retorno = conexion.Ejecutar(String.Format("Update Egresos Set Fecha = '{0}', CuentaId = {1}, Monto = {2}, TipoEgresoId = {3}, Observacion = '{4}'  Where EgresoId = {5}", this.Fecha, this.CuentaId, this.Monto,this.TipoEgresoId, this.Observacion,this.EgresoId));
            return retorno;
        }

        public override bool Eliminar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();

            retorno = conexion.Ejecutar(String.Format("Delete Egresos where EgresoId = {0}",this.EgresoId));
            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();

            dt = conexion.ObtenerDatos(String.Format("Select *from Egresos Where EgresoId = {0}",IdBuscado));
            if(dt.Rows.Count > 0)
            {
                this.Fecha = dt.Rows[0]["Fecha"].ToString();
                this.CuentaId = Convert.ToInt32(dt.Rows[0]["CuentaId"]);
                this.Monto = Convert.ToSingle(dt.Rows[0]["Monto"]);
                //this.MiembroId = Convert.ToInt32(dt.Rows[0]["MiembroId"]);
                this.TipoEgresoId = Convert.ToInt32(dt.Rows[0]["TipoEgresoId"]);
                //this.Observacion = dt.Rows[0]["Observacion"].ToString();
            }
            return dt.Rows.Count > 0;

        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenFinal = "";
            ConexionDb conexion = new ConexionDb();

            if (!Orden.Equals(""))
                ordenFinal = " Orden by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " From Egresos Where " +
                                          Condicion + " " + ordenFinal);
        }
    }
}
