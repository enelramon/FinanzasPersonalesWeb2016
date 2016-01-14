using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    class Usuarios : ClaseMaestra
    {
        public int UsuarioId { get; set; }
        public string Nombres { get; set; }
        public int TipoUsuarioId { get; set; }
        public string Password { get; set; }

    public Usuarios()
        {
            this.UsuarioId = 0;
            this.Nombres = "";
            this.TipoUsuarioId = 0;
            this.Password = "";
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
            throw new NotImplementedException();
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }
    }
}
