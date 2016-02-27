using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{ 
   public  class Cuentas : ClaseMaestra 
    {

        public int CuentaId { get; set; }
        public int UsuarioId { get; set; }
        public string Descripcion { get; set; }
        public float Balance { get; set; }
        public float Porciento{ get; set; }

        public Cuentas(){

            CuentaId = 0;
            UsuarioId = 0;
            Descripcion = string.Empty;
            Balance = 0;
            Porciento = 0;

        }


        public override bool Insertar()
        {
            ConexionDb con = new ConexionDb();

            bool retorno = false;

            try
            {
                retorno = con.Ejecutar(string.Format("insert into Cuentas (UsuarioId, Descripcion, Balance, Porciento) values ({0},'{1}',{2},{3})", this.UsuarioId, this.Descripcion, this.Balance, this.Porciento));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;

        }
        public override bool Editar()

        {
            ConexionDb con = new ConexionDb();

            bool Retorno = false;
            Retorno = con.Ejecutar(String.Format("Update Cuentas set UsuarioId = {0}, Descripcion = '{1}', Balance = {2}, Porciento = {3} where CuentaId = {4}", this.UsuarioId, this.Descripcion, this.Balance, this.Porciento, this.CuentaId));
            return Retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb con = new ConexionDb();

            bool retorno = false;
            retorno = con.Ejecutar(String.Format("Delete from Cuentas where CuentaId = {0}", this.CuentaId));
            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb con = new ConexionDb();

            DataTable dt = new DataTable();

            dt = con.ObtenerDatos(String.Format("Select * from Cuentas where CuentaId = {0}", IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.CuentaId = (int)dt.Rows[0]["CuentaId"];
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
                this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
                this.Balance = (float)dt.Rows[0]["Balance"];
                this.Porciento = (float)dt.Rows[0]["Porciento"];


            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb con = new ConexionDb();

            string OrdenFinal = string.Empty;
            if (!Orden.Equals(""))
            {
                OrdenFinal = " Order by " + Orden;
            }
            return con.ObtenerDatos("Select " + Campos + "from Cuentas where " + Condicion + " " + OrdenFinal);
        }
    }
}

    

        
