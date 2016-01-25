using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class MiembrosTests
    {
        [TestMethod()]
        public void MiembrosTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            Miembros miembro = new Miembros();
           
            miembro.Nombre = "Familia";
            miembro.esActivo = 1;
            miembro.UsuarioId = 5;

            Assert.IsTrue(miembro.Insertar());
        }

        [TestMethod()]
        public void EditarTest()
        {
            Miembros miembro = new Miembros();

            miembro.MiembroId = 1;
            miembro.Nombre = "NOmbre de miembro editado";
            miembro.esActivo = 0;
            miembro.UsuarioId = 4;

            Assert.IsTrue(miembro.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {
            Miembros miembro = new Miembros();

            miembro.MiembroId = 2;
            

            Assert.IsTrue(miembro.Eliminar());
        }

        [TestMethod()]
        public void BuscarTest()
        {
            Miembros miembro = new Miembros();

            Assert.IsTrue(miembro.Buscar(1));
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Miembros miembro = new Miembros();

            Assert.IsTrue(miembro.Listado(" * ", "1=1", "").Rows.Count > 0);
        }
    }
}