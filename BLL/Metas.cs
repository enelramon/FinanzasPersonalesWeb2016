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
        public int TipoIngresoId { get; set; }
        public double Monto { get; set; }
        public List<Metas> metas { get; set; }

        ConexionDb conexion = new ConexionDb();
        public Metas()
        {
            this.MetaId = 0;
            this.Descripcion = "";
            this.UsuarioId = 0;
            this.TipoIngresoId = 0;
            this.Monto = 0.00;
            metas = new List<Metas>();
        }

        public Metas(int MetaId, int TipoIngresoId,double Monto)
        {
            this.MetaId = MetaId;
            this.TipoIngresoId = TipoIngresoId;
            this.Monto = Monto;
        }

        public void AgregarMetas(int MetaId, int TipoIngresoId, double Monto)
        {
            this.metas.Add(new Metas(MetaId, TipoIngresoId, Monto));
        }

        public DataTable ObtenerMetaId()
        {
            return conexion.ObtenerDatos(String.Format("select MAX(MetaId)+1 as MetaId from Metas"));
        }

        public void LimpiarList()
        {
            this.metas.Clear();
        }

        public override bool Insertar()
        {
            bool retorno = false;
            StringBuilder comando = new StringBuilder();
            try
            {
                retorno = conexion.Ejecutar(String.Format("Insert into Metas (Descripcion,UsuarioId) Values ('{0}',{1}) ", this.Descripcion, this.UsuarioId));
                if (retorno)
                {
                    this.MetaId = (int)conexion.ObtenerDatos(String.Format("select MAX(MetaId) as MetaId from Metas")).Rows[0]["MetaId"];
                    foreach (var pro in metas)
                    {
                        comando.AppendLine(String.Format("insert into MetasDetalle(MetaId,TipoIngresoId,Monto) values({0},{1},{2})", this.MetaId, pro.TipoIngresoId, pro.Monto));
                    }
                }

                retorno = conexion.Ejecutar(comando.ToString());
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
                retorno = conexion.Ejecutar(String.Format("update Metas set Descripcion = '{0}', UsuarioId = {1} where MetaId = {2}", this.Descripcion, this.UsuarioId, this.MetaId));
                if (retorno)
                {
                    retorno = conexion.Ejecutar(String.Format("delete from MetasDetalle where MetaId = {0}", this.MetaId));
                    foreach (var pro in metas)
                    {
                        comando.AppendLine(String.Format("insert into MetasDetalle(MetaId,TipoIngresoId,Monto) values({0},{1},{2})", this.MetaId, pro.TipoIngresoId, pro.Monto));
                    }

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
                retorno = conexion.Ejecutar(String.Format("Delete from Metas where MetaId = {0};" +
                    "Delete from MetasDetalle where MetaId = {0};", this.MetaId));
            }
            catch (Exception)
            {
                retorno = false;
            }

            return retorno;
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
                        AgregarMetas((int)row["MetaId"], (int)row["TipoIngresoId"], (double)row["Monto"]);
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

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenFinal = "";

            if (!Orden.Equals(""))
                ordenFinal = " Order by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " From Metas Where " + Condicion + " " + ordenFinal);
        }
    }
}
