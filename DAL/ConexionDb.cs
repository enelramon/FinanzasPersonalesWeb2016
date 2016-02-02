﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL
{
    /// <summary>
    /// La clase conexion...
    /// </summary>
    public class ConexionDb
    {
        private SqlConnection con;
        private SqlCommand Cmd;

        public ConexionDb()
        {
            //DARLENISM\SQLEXPRESS - TipoIngresosScrit
            //ROOT-PC\\SURPUSER 
            ////JUNIOR-PC\\ROOT no dejar la conexion apuntando a tu maquina
            con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=FinanzasPersonalesWebDb;Integrated Security=True");
            Cmd = new SqlCommand();

        }

        /// <summary>
        /// Ejecuar comandos contra la base de datos
        /// </summary>
        /// <param name="ComandoSql">El comando sql que se desea ejecutar</param>
        /// <returns>Verdadero o Falso dependiendo de si ejecuto correctament o no</returns>
        public bool Ejecutar(String ComandoSql)
        {
            bool retorno = false;

            try
            {
                con.Open();
                Cmd.Connection = con;
                Cmd.CommandText = ComandoSql;
                Cmd.ExecuteNonQuery();
                retorno = true;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }

            return retorno;
        }

        public DataTable ObtenerDatos(String ComandoSql)
        {

            SqlDataAdapter adapter;
            DataTable dt = new DataTable();

            try
            {
                con.Open();
                Cmd.Connection = con;
                Cmd.CommandText = ComandoSql;

                adapter = new SqlDataAdapter(Cmd);
                adapter.Fill(dt);

            }
            catch (Exception ex)
            {
                throw ex;
                //MessageBox.Show(ex.Message);
            }
            finally
            {
                con.Close();
            }

            return dt;
        }


        public Object ObtenerValor(String ComandoSql)
        {
            Object retorno = null;

            try
            {
                con.Open();
                Cmd.Connection = con;
                Cmd.CommandText = ComandoSql;
                retorno = Cmd.ExecuteScalar();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }

            return retorno;
        }

    }
}
