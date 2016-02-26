using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class TiposUsuarios : ClaseMaestra

    {
        ConexionDb Conexion = new ConexionDb();

        public int TipoUsuarioId { get; set; }
        public string Descripcion { get; set; }

       public  TiposUsuarios()
        {
            this.TipoUsuarioId = 0;
            this.Descripcion = "";
        }
        public override bool Insertar()
        {
            String IdRetornado;

            try
            {
                IdRetornado = Convert.ToString( Conexion.ObtenerValor(string.Format("insert into TiposUsuario (Descripcion) values ('{0}') select scope_identity() ", this.Descripcion)));
                this.TipoUsuarioId = Convert.ToInt16(IdRetornado);
            }
            catch (Exception)
            {

                return false;
            }

            return true;
        }

        public override bool Editar()
        {
            Boolean paso = false;

            paso = Conexion.Ejecutar(string.Format("Update TiposUsuario set Descripcion = '{0}'  where TipoUsuarioId = {1}", this.Descripcion, this.TipoUsuarioId));

            return paso;
        }

        public override bool Eliminar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("Delete from TiposUsuario where TipoUsuarioId = {0}", this.TipoUsuarioId));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            dt = Conexion.ObtenerDatos("Select * from TiposUsuario where TipoUsuarioId =" + IdBuscado);

            if (dt.Rows.Count > 0)
            {
                this.TipoUsuarioId = (int)dt.Rows[0]["IdTipoUsuario"];
                this.Descripcion = (string)dt.Rows[0]["Descripcion"];
               
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string OrdenFinal = (Orden.Length>0)  ? " Order By " + Orden : " ";

            return Conexion.ObtenerDatos("select " + Campos + " from TiposUsuario where " + Condicion + OrdenFinal);
        }
    }

    
}
