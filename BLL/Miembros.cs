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
        public string Apellidos { get; set; }
        public string Parentesco { get; set; }
        public int esActivo { get; set; }
        public int UsuarioId { get; set; }

        public ConexionDb con = new ConexionDb();

        public Miembros()
        {
            this.MiembroId = 0;
            this.Nombre = String.Empty;
            this.Apellidos = String.Empty;
            this.Parentesco = "No Especificado";
            this.esActivo = 0;
            this.UsuarioId = 0;
        }

        public override bool Insertar()
        {
            bool retorno = false;

            try
            {
                retorno = con.Ejecutar(string.Format("insert into Miembros (Nombre, Apellidos, Parentesco, esActivo, UsuarioId) values ('{0}','{1}','{2}',{3},{4})", this.Nombre, this.Apellidos, this.Parentesco, this.esActivo, this.UsuarioId));
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
            Retorno = con.Ejecutar(String.Format("Update Miembros set Nombre = '{0}', esActivo = {1}, UsuarioId = {2}, Apellidos = '{3}', Parentesco = '{4}' where MiembroId = {5}", this.Nombre, this.esActivo, this.UsuarioId, this.Apellidos, this.Parentesco, this.MiembroId));
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
                this.Apellidos = dt.Rows[0]["Apellidos"].ToString();
                this.Parentesco = dt.Rows[0]["Parentesco"].ToString();
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
