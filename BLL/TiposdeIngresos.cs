using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    class TiposdeIngresos : ClaseMaestra
    {
        ConexionDb Conexion = new ConexionDb();

        public int TipoIngresoId { get; set; }
        public string Descripcion { get; set; }
        public bool EsActivo { get; set; }
        public int UsuarioId { get; set; }

        public TiposdeIngresos()
        {
            this.TipoIngresoId = 0;
            this.Descripcion = "";
            this.EsActivo = false;
            this.UsuarioId = 0;
        }

        public override bool Buscar(int IdBuscado)
        {
            throw new NotImplementedException();
        }

        public override bool Editar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format(""));
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
                retorno = Conexion.Ejecutar(string.Format(""));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }

        public override bool Insertar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format(""));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            DataTable dt = new DataTable();
            try
            {
                dt = Conexion.ObtenerDatos("select " + Campos + " from TiposdeIngresos where " + Condicion + " " + Orden);
            }
            catch (Exception)
            {
                
            }

            return dt;
        }
    }
}
