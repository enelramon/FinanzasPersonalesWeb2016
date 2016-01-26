using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Presupuesto : ClaseMaestra
    {
        public int PresupuestoId { get; set; }
        public int UsuarioId { get; set; }
        public string Descripcion { get; set; }
        public List<PresupuestoDetalle> Detalle;


        public Presupuesto()
        {
            UsuarioId = 0;
            Descripcion = "";
            Detalle = new List<PresupuestoDetalle>();
        }


        public Presupuesto(int PresupuestoId, int UsuarioId, string Descripcion)
        {
            this.PresupuestoId = PresupuestoId;
            this.UsuarioId = UsuarioId;
            this.Descripcion = Descripcion;
            Detalle = new List<PresupuestoDetalle>();
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            try {
                retorno = conexion.Ejecutar(String.Format("Insert Into Presupuestos (UsuarioId,Descripcion) Values ({0},'{1}')", this.UsuarioId, this.Descripcion));
                if (retorno) {
                    foreach (PresupuestoDetalle pd in Detalle)
                    {
                        conexion.Ejecutar("Insert Into PresupuestoDetalle (PresupuestoId,TipoEgresosId,Monto) Values ("+ PresupuestoId + "," + pd.TipoEgresoId + "," + pd.Monto + ")");
                    }
                }
            }
            catch
            {
                retorno = false;
            }
            return retorno;
        }

        
        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try {
                retorno = conexion.Ejecutar(String.Format("Update Presupuestos Set UsuarioId = {0}, Descripcion = '{1}' Where PresupuestoId = {2}", this.UsuarioId, this.Descripcion, this.PresupuestoId));
                if (retorno)
                {
                    conexion.Ejecutar(String.Format("Delete from PresupuestoDetalle Where PresupuestoId = {0}", this.PresupuestoId));
                    foreach (PresupuestoDetalle pd in Detalle)
                    {
                        conexion.Ejecutar(String.Format("Insert Into PresupuestoDetalle (PresupuestoId,TipoEgresosId,Monto) Values ({0},{1},{2})", this.PresupuestoId, pd.TipoEgresoId, pd.Monto));
                    }
                }
            }
            catch
            {
                retorno = false;
            }
            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(String.Format("Delete from Presupuestos Where PresupuestoId = {0}", this.PresupuestoId));
            
                if (retorno)
                {
                    conexion.Ejecutar(String.Format("Delete from PresupuestoDetalle Where PresupuestoId = {0}", this.PresupuestoId));                
                }
            }catch
            {
                retorno = false;
            }
            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();

            try
            {
                dt = conexion.ObtenerDatos(String.Format("Select * From Presupuestos Where PresupuestoId = {0}", IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.PresupuestoId = (int)dt.Rows[0]["PresupuestoId"];
                    this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
                    this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
                }
                dt = conexion.ObtenerDatos(String.Format("Select * From PresupuestoDetalle Where PresupuestoId = {0}", IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                        this.AgregarDetalle((int)dr["TipoEgresosId"], Convert.ToSingle(dr["Monto"]));
                }
            }
            catch
            {
                return false;
            }
            return dt.Rows.Count > 0;
        }

        

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string OrdenFinal = "";

            if (!Orden.Equals(""))
            {
                OrdenFinal = " Order by " + Orden;
            }
            return conexion.ObtenerDatos("select " + Campos + " from Presupuestos where " + Condicion + " " + OrdenFinal);
        }


        public void AgregarDetalle(int TipoEgresoId, float Monto)
        {
            this.Detalle.Add(new PresupuestoDetalle(TipoEgresoId, Monto));
        } 
    }
}
