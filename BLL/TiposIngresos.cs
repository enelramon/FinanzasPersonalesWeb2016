using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class TiposIngresos : ClaseMaestra
    {
        //Arreglando
        ConexionDb Conexion = new ConexionDb();

        public int TipoIngresoId { get; set; }
        public string Descripcion { get; set; }
        public bool EsActivo { get; set; }
        public int UsuarioId { get; set; }

        public TiposIngresos()
        {
            this.TipoIngresoId = 0;
            this.Descripcion = "";
            this.EsActivo = false;
            this.UsuarioId = 0;
        }

        public override bool Insertar()
        {
            bool retorno = false;

            try
            {
                if (this.EsActivo)
                {
                    retorno = Conexion.Ejecutar(string.Format("insert into TiposIngresos (Descripcion, EsActivo, UsuarioId) values ('{0}',{1},{2})", this.Descripcion,1,this.UsuarioId));
                }
                else
                {
                    retorno = Conexion.Ejecutar(string.Format("insert into TiposIngresos (Descripcion, EsActivo, UsuarioId) values ('{0}',{1},{2})", this.Descripcion, 0, this.UsuarioId));
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
            bool retorno = false;

            try
            {
                if (this.EsActivo)
                {
                    retorno = Conexion.Ejecutar(string.Format("update TiposIngresos set Descripcion = '{0}', EsActivo = {1}, UsuarioId = {2} where TipoIngresoId = {3}", this.Descripcion, 1, this.UsuarioId, this.TipoIngresoId));
                }
                else
                {
                    retorno = Conexion.Ejecutar(string.Format("update TiposIngresos set Descripcion = '{0}', EsActivo = {1}, UsuarioId = {2} where TipoIngresoId = {3}", this.Descripcion, 0, this.UsuarioId, this.TipoIngresoId));
                }
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }

        public override bool Eliminar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("delete from TiposIngresos where TipoIngresoId = {0}", this.TipoIngresoId));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            bool retorno = false;
            DataTable DtTipoIngreso = new DataTable();
            DataTable DtUsuario = new DataTable();

            try
            {
                DtTipoIngreso = Conexion.ObtenerDatos(String.Format("select * from  TiposIngresos where TipoIngresoId = {0}", IdBuscado));
                this.Descripcion = DtTipoIngreso.Rows[0]["Descripcion"].ToString();
                this.EsActivo = (bool)DtTipoIngreso.Rows[0]["EsActivo"];
                this.UsuarioId = (int)DtTipoIngreso.Rows[0]["UsuarioId"];
                retorno = true;
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }


        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string OrdenFinal = " ";

            if (!Orden.Equals(""))
            {
                OrdenFinal = " Orden by " + Orden;
            }

            return Conexion.ObtenerDatos("select " + Campos + " from TiposIngresos where " + Condicion + " " + OrdenFinal);
        }
    }
}
