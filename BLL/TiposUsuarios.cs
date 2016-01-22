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

        public int IdTipoUsuario { get; set; }
        public string Descripcion { get; set; }

       public  TiposUsuarios()
        {
            this.IdTipoUsuario = 0;
            this.Descripcion = "";
        }
        public override bool Insertar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("insert into TiposUsuario (Descripcion) values ('{0}')", this.Descripcion));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }

        public override bool Editar()
        {
            Boolean paso = false;

            paso = Conexion.Ejecutar(string.Format("Update TiposUsuario set Descripcion = '{0}'  where IdTipoUsuario = {1}", this.Descripcion, this.IdTipoUsuario));

            return paso;
        }

        public override bool Eliminar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("Delete from TiposUsuario where IdTipoUsuario = {0}", this.IdTipoUsuario));
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

            dt = Conexion.ObtenerDatos("Select * from TiposUsuario where IdTipoUsuario = {0}"+ this.IdTipoUsuario);

            if (dt.Rows.Count > 0)
            {
                this.IdTipoUsuario = (int)dt.Rows[0]["IdTipoUsuario"];
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
