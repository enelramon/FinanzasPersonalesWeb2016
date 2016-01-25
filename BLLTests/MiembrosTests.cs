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
            miembro.UsuarioId = 1;

            Assert.Fail();
        }

        [TestMethod()]
        public void EditarTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void EliminarTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void BuscarTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Assert.Fail();
        }
    }
}