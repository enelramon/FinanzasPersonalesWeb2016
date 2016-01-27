﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Usuarios : ClaseMaestra
    {
        //Arreglando
        ConexionDb Conexion = new ConexionDb();

        public int UsuarioId { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public int TipoUsuarioId { get; set; }
        public string Usuario { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }

        public Usuarios()
        {
            this.UsuarioId = 0;
            this.Nombres = "";
            this.Apellidos = "";
            this.TipoUsuarioId = 0;
            this.Usuario = "";
            this.Password = "";
            this.Email = "";
        }

        public override bool Insertar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("insert into Usuarios (Nombres, Apellidos, Usuario, Contrasena, Email, TipoUsuarioId) values ('{0}','{1}','{2}','{3}','{4}',{5})", this.Nombres, this.Apellidos, this.Usuario, this.Password, this.Email, this.TipoUsuarioId));
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

            paso = Conexion.Ejecutar(string.Format("Update Usuarios set Nombres = '{0}', Apellidos = '{1}', Usuario = '{2}', Contrasena = '{3}', Email = '{4}', TipoUsuarioId = {5}  where UsuarioId = {6}", this.Nombres, this.Apellidos, this.Usuario, this.Password, this.Email, this.TipoUsuarioId, this.UsuarioId));

            return paso;
        }

        public override bool Eliminar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("delete from Usuarios where UsuarioId = {0}", this.UsuarioId));
            }
            catch (Exception)
            {

                retorno = false;
            }

            return retorno;
        }


        public override bool Buscar(Int32 IdBuscado)
        {
            bool Encontro = false;
            DataTable dt = new DataTable();

            dt = this.Listado("Nombres, Apellidos, TipoUsuarioId, Usuario, Email", "UsuarioId =" + IdBuscado, "UsuarioId Asc");

            if (dt.Rows.Count > 0)
            {
                Encontro = true;

                this.UsuarioId = IdBuscado;
                this.Nombres = (string)dt.Rows[0]["Nombres"];
                this.Apellidos = (string)dt.Rows[0]["Apellidos"];
                this.Usuario = (string)dt.Rows[0]["Usuario"];
                this.Email = (string)dt.Rows[0]["Email"];
            }

            return Encontro;
        }

        

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string OrdenFinal = "";

            if (!Orden.Equals(""))
            {
                OrdenFinal = " Order by " + Orden;
            }
            return Conexion.ObtenerDatos("select " + Campos + " from Usuarios where " + Condicion + " " + OrdenFinal);
        }
    }
}
