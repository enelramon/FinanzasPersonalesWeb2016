using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    class TiposdeIngresos : ClaseMaestra
    {
        public int TipoIngresoId { get; set; }
        public string Descripcion { get; set; }
        public bool EsActivo { get; set; }
        public int UsuarioId { get; set; }

        public TiposdeIngresos()
        {
            this.TipoIngresoId = 0;
            this.Descripcion = "";
            this.EsActivo = false;
            this.UsuarioId = 0;
        }

        public override bool Buscar(int IdBuscado)
        {
            throw new NotImplementedException();
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool Insertar()
        {
            bool retorno = false;


        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }
    }
}
