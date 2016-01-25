using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class TiposEgresos : ClaseMaestra
    {
        //Arreglando
        public int TipoEgresoId { get; set; }
        public string Descripcion { get; set; }
        public bool EsActivo { get; set; }
        public int UsuarioId { get; set; }

        public TiposEgresos()
        {
            this.TipoEgresoId = 0;
            this.Descripcion = "";
            this.EsActivo = false;
            this.UsuarioId = 0;
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            if (this.EsActivo)
            {
                retorno = conexion.Ejecutar(String.Format("Insert Into TiposEgresos (Descripcion, EsActivo,UsuarioId) Values ('{0}',{1},{2})", this.Descripcion, 1, this.UsuarioId));
            }
            else
            {
                retorno = conexion.Ejecutar(String.Format("Insert Into TiposEgresos (Descripcion, EsActivo,UsuarioId) Values ('{0}',{1},{2})", this.Descripcion, 0, this.UsuarioId));
            }

            return retorno;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            if (this.EsActivo)
            {
                retorno = conexion.Ejecutar(String.Format("Update TiposEgresos Set Descripcion = '{0}', EsActivo = {1},UsuarioId = {2} Where TipoEgresoId = {3}", this.Descripcion,1, this.UsuarioId, this.TipoEgresoId));

            }
            else
            {
                retorno = conexion.Ejecutar(String.Format("Update TiposEgresos Set Descripcion = '{0}', EsActivo = {1},UsuarioId = {2} Where TipoEgresoId = {3}", this.Descripcion, 0, this.UsuarioId, this.TipoEgresoId));
            }

            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Delete TiposEgresos Where TipoEgresoId = {0}", this.TipoEgresoId));
            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();


            dt = conexion.ObtenerDatos(String.Format("Select * From TiposEgresos Where TipoEgresoId = {0}", IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.TipoEgresoId = (int)dt.Rows[0]["TipoEgresoId"];
                this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
                this.EsActivo = Convert.ToBoolean(dt.Rows[0]["EsActivo"]);
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenFinal = " ";

            if (!Orden.Equals(""))
                ordenFinal = " Orden by " + Orden;
            return conexion.ObtenerDatos("Select "+ Campos+" From TiposEgresos Where "+
                                          Condicion + " "+ ordenFinal); 
        }
    }
}
