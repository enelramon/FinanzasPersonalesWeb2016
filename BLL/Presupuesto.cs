using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    class Presupuesto : ClaseMaestra
    {
        public int PresupuestoId { get; set; }
        public int UsuarioId { get; set; }
        public string Descripcion { get; set; }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();


            dt = conexion.ObtenerDatos(String.Format("Select * From Presupuestos Where PresupuestoId = {0}", IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.PresupuestoId = (int)dt.Rows[0]["PresupuestoId"];
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
                this.Descripcion = dt.Rows[0]["Descripcion"].ToString();            
            }
            return dt.Rows.Count > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Update Presupuestos Set UsuarioId = {0}, Descripcion = '{1}' ", this.UsuarioId, this.Descripcion));
            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Delete from Presupuestos Where PresupuestoId = {0}", this.PresupuestoId));
            return retorno;
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Insert Into Presupuestos (UsuarioId,Descripcion) Values ({0},'{1}')", this.UsuarioId, this.Descripcion));
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
            return conexion.ObtenerDatos("select " + Campos + " from Presupuestos where " + Condicion + " " + OrdenFinal);
        }
    }
}
