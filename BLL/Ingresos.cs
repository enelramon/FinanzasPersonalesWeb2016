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
        public string Fecha { get; set; }
        public double Monto { get; set; }
        public int MiembroId { get; set; }
        public int CuentaId { get; set; }
        public int TipoIngresoId { get; set; }
        public string Observacion { get; set; }

        public override bool Buscar(int IdBuscado)
        {
            bool retorno = false;
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();
            try
            { 
                dt = conexion.ObtenerDatos(String.Format("select * from Ingresos Where IngresoId = {0} ", IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.Fecha = dt.Rows[0]["Fecha"].ToString();
                    this.CuentaId = (int)dt.Rows[0]["CuentaId"];
                    this.Monto = (double)dt.Rows[0]["Monto"];
                    this.MiembroId = (int)dt.Rows[0]["MiembroId"];
                    this.TipoIngresoId = (int)dt.Rows[0]["TipoIngresoId"];
                    this.Observacion = dt.Rows[0]["Observacion"].ToString();
                    retorno = true;
                }
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }

        public override bool Editar()
        {
            ConexionDb Conexion = new ConexionDb();
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(String.Format("update Ingresos set Fecha = '{0}',CuentaId = {1}, Monto = {2}, MiembroId = {3}, TipoIngresoId = {4}, Observacion = '{5}' where IngresoId = {6} ", this.Fecha, this.CuentaId, this.Monto, this.TipoIngresoId, this.MiembroId, this.Observacion));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb Conexion = new ConexionDb();
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(String.Format("Delete from Ingresos where IngresoId = {0} ", this.IngresoId));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }

        public override bool Insertar()
        {
            ConexionDb Conexion = new ConexionDb();
            bool retorno = false;

            try
            { 
                retorno = Conexion.Ejecutar(String.Format("Insert into Ingresos(Fecha,CuentaId,Monto,MiembroId,TipoIngresoId,Observacion) values('{0}',{1},{2},{3},{4},'{5}')", this.Fecha, this.CuentaId, this.Monto, this.TipoIngresoId, this.MiembroId, this.Observacion));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
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
