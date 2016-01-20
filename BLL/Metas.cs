using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;
namespace BLL
{
    public class Metas : ClaseMaestra
    {
        public int MetaId { get; set; }
        public string Descripcion { get; set; }
        public int UsuarioId { get; set; }
        public int PresupuestoId { get; set; }
        public int TipoIngresoId { get; set; }
        public float Monto { get; set; }
        public List<Presupuesto> presupuesto { get; set; }

        ConexionDb conexion = new ConexionDb();
        public Metas()
        {
            this.MetaId = 0;
            this.Descripcion = "";
            this.UsuarioId = 0;
            this.PresupuestoId = 0;
            this.TipoIngresoId = 0;
            this.Monto = 0.0f;
        }

        public void AgregarPresupuesto(int PresupuestoId, int TipoIngresoId, float Monto)
        {
            //this.presupuesto.Add(new Presupuesto(PresupuestoId, TipoIngresoId, Monto));
        }


        public void LimpiarList()
        {
            //this.presupuesto.Clear();
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dtMetas = new DataTable();
            DataTable dtMetasDetalle = new DataTable();
            bool retorno = false;

            try
            {
                dtMetas = conexion.ObtenerDatos(string.Format("select * from Metas where MetaId = {0}", IdBuscado));
                if (dtMetas.Rows.Count > 0)
                {
                    this.Descripcion = dtMetas.Rows[0]["Descripcion"].ToString();
                    this.UsuarioId = (int)dtMetas.Rows[0]["UsuarioId"];


                    dtMetasDetalle = conexion.ObtenerDatos(String.Format("select * from MetasDetalle where MetaId = {0}", IdBuscado));

                    LimpiarList();
                    foreach (DataRow row in dtMetasDetalle.Rows)
                    {
                        AgregarPresupuesto((int)row["PresupuestoId"], (int)row["TipoIngresoId"], (float)row["Monto"]);
                    }
                    retorno = true;
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
            StringBuilder comando = new StringBuilder();

            try
            {
                retorno = conexion.Ejecutar(String.Format("update Metas set Descripcion = '{0}', UsuarioId = {1} where metaId = {2}",this.Descripcion,this.UsuarioId,this.MetaId));
                if (retorno)
                {
                    retorno = conexion.Ejecutar(String.Format("delete from MetasDetalle where MetaId = {0}", this.MetaId));
                    /*foreach (var pro in presupuesto)
                    {
                        comando.AppendLine(String.Format("insert into MetasDetalle(PresupuestoId,TipoIngresoId,Monto) values({0},{1},{2})", pro.PresupuestoId, pro.TipoIngresoId, pro.Monto));
                    }*/

                    retorno = conexion.Ejecutar(comando.ToString());
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
                retorno = conexion.Ejecutar("Delete from Metas where MetaId = " + this.MetaId + ";" + "Delete from MetasDetalle where MetaId =" + this.MetaId);
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
            StringBuilder comando = new StringBuilder();
            try
            {
                retorno = conexion.Ejecutar(String.Format("Insert into Ventas (Descripcion,UsuarioId) Values ({0},{1}) ",this.Descripcion,this.UsuarioId));
                if (retorno)
                {
                    this.MetaId = (int)conexion.ObtenerDatos(String.Format("select MAX(MetaId) as MetaId from Metas")).Rows[0]["MetaId"];
                    /*foreach (var pro in presupuesto)
                    {
                        comando.AppendLine(String.Format("insert into MetasDetalle(PresupuestoId,TipoIngresoId,Monto) values({0},{1},{2})", pro.PresupuestoId, pro.TipoIngresoId, pro.Monto));
                    }*/
                }

                retorno = conexion.Ejecutar(comando.ToString());
            }
            catch (Exception)
            {
                retorno = false;
            }

            return retorno;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenFinal = "";
            ConexionDb conexion = new ConexionDb();

            if (!Orden.Equals(""))
                ordenFinal = " Orden by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " From Metas Where " + Condicion + " " + ordenFinal);
        }
    }
}
