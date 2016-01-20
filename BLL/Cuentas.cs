using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    class Cuentas : ClaseMaestra
    {

        //Arreglando
        public int CuentaId { get; set; }
        public int UsuarioId { get; set; }
        public string Descripcion { get; set; }
        public float Balance { get; set; }
        public int Porciento{ get; set; }

        public Cuentas(){
            CuentaId = 0;
            UsuarioId = 0;
            Descripcion = "";
            Balance = 0.0f;
            Porciento = 0;

        }


        public override bool Insertar()
        {

            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Insert Into Cuentas (UsuarioId,Descripcion,Balance,Porciento) Values ({0},'{1}',{2},(3))", this.UsuarioId, this.Descripcion, this.Balance, this.Porciento));
            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();


            dt = conexion.ObtenerDatos(String.Format("Select * From CuentaId Where CuentaId = {0}", IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.CuentaId = (int)dt.Rows[0]["CuentaId"];
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
                this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
                this.Balance = (int)dt.Rows[0]["Balance"];
                this.Porciento = (int)dt.Rows[0]["Porciento"];
            }
            return dt.Rows.Count > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Update Cuentas Set UsuarioId = '{0}', Descripcion = {1},Balance = {2} , Porciento= {3} Where CuentaId = {4}", this.UsuarioId, this.Descripcion, this.Balance, this.Porciento, this.CuentaId));
            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            retorno = conexion.Ejecutar(String.Format("Delete Cuentas Where CuentaId = {0}", this.CuentaId));
            return retorno;
        }

        

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenFinal = " ";

            if (!Orden.Equals(""))
                ordenFinal = " Orden by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " From Cuentas Where " + Condicion + " " + ordenFinal);
        }
    }
}
