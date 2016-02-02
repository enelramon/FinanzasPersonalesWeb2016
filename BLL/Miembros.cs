using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Miembros : ClaseMaestra
    {
        public int MiembroId { get; set; }
        public string Nombre { get; set; }
        public int esActivo { get; set; }
        public int UsuarioId { get; set; }

        public ConexionDb con = new ConexionDb();

        public Miembros()
        {
            this.MiembroId = 0;
            this.Nombre = String.Empty;
            this.esActivo = 0;
            this.UsuarioId = 0;
        }

        public override bool Insertar()
        {
            bool retorno = false;

            try
            {
                retorno = con.Ejecutar(string.Format("insert into Miembros (Nombre, esActivo, UsuarioId) values ('{0}',{1},{2})", this.Nombre, this.esActivo, this.UsuarioId));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
       
        }

        public override bool Editar()
        {
            bool Retorno = false;
            Retorno = con.Ejecutar(String.Format("Update Miembros set Nombre = '{0}', esActivo = {1}, UsuarioId = {2} where MiembroId = {3}", this.Nombre, this.esActivo, this.UsuarioId, this.MiembroId));
            return Retorno;
        }

        public override bool Eliminar()
        {
            bool retorno = false;
            retorno = con.Ejecutar(String.Format("Delete from Miembros where MiembroId = {0}", this.MiembroId));
            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            dt = con.ObtenerDatos(String.Format("Select * from Miembros where MiembroId = {0}", IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.MiembroId = (int)dt.Rows[0]["MiembroId"];
                this.Nombre = dt.Rows[0]["Nombre"].ToString();
                this.esActivo = (int)dt.Rows[0]["esActivo"];
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];

            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string OrdenFinal = string.Empty;
            if(!Orden.Equals(""))
            {
                OrdenFinal = " Order by " + Orden;
            }
            return con.ObtenerDatos("Select " + Campos + "from Miembros where " + Condicion + " " + OrdenFinal);
        }
    }
}
