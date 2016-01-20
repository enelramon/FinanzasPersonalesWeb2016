using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Transferencia : ClaseMaestra
    {
        //Arreglando
        public int TransferenciaId { get; set; }
        public string Fecha { get; set; }
        public int CuentaOrigenId { get; set; }
        public int CuentaDestinoId { get; set; }
        public double Monto { get; set; }
        public string Observacion { get; set; }
        public int UsuarioId { get; set; }

        public Transferencia()
        {
            this.TransferenciaId = 0;
            this.Fecha = "";
            this.CuentaOrigenId = 0;
            this.CuentaDestinoId = 0;
            this.Monto = 0;
            this.Observacion = "";
            this.UsuarioId = 0;
        }
        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();

            dt = conexion.ObtenerDatos(String.Format("select * from Transferencias where TransferenciaId = {0}", TransferenciaId));

            if (dt.Rows.Count>0)
            {
                this.Fecha = dt.Rows[0]["Fecha"].ToString();
                this.CuentaOrigenId = (int)dt.Rows[0]["CuentaOrigenId"];
                this.CuentaDestinoId = (int)dt.Rows[0]["CuentaDestinoId"];
                this.Monto = (double)dt.Rows[0]["Monto"];
                this.Observacion = dt.Rows[0]["Observacion"].ToString();
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
            }
            return dt.Rows.Count > 0;
        }

        public override bool Editar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();
            retorno = conexion.Ejecutar(String.Format("Update Transferencias set Fecha = '{0}', CuentaOrigen = {1}, CuentaDestino = {2}, Monto = {3}, Observacion = '{4}', UsuarioId = {5}", this.Fecha, this.CuentaOrigenId, this.CuentaDestinoId, this.Monto, this.Observacion, this.UsuarioId));
            return retorno;
        }

        public override bool Eliminar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();
            retorno = conexion.Ejecutar(String.Format("Delete Transferencias where TransferenciaId = {0}", this.TransferenciaId));
            return retorno;
        }

        public override bool Insertar()
        {
            bool retorno = false;
            ConexionDb conexion = new ConexionDb();
            retorno = conexion.Ejecutar(String.Format("Insert Into Transferencias (Fecha, CuentaOrigenId, CuentaDestinoId, Monto, Observacion, UsuarioId) values('{0}', {1}, {2}, {3}, '{4}', {5})", this.Fecha, this.CuentaOrigenId, this.CuentaDestinoId, this.Monto, this.Observacion, this.UsuarioId));
            return retorno;
            
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenFinal = "";
            ConexionDb conexion = new ConexionDb();

            if (!Orden.Equals(""))
                ordenFinal = " Orden by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " From Transferencias Where " +
                                          Condicion + " " + ordenFinal);
        }
    }
}
