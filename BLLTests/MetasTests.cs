using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class MetasTests
    {
        [TestMethod()]
        public void MetasTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void MetasTest1()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void AgregarMetasTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void LimpiarListTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            Metas meta = new Metas();
            meta.Descripcion = "Mi Meta Personal";
            meta.UsuarioId = 1;
            meta.AgregarMetas(1, 1, 200);
            
            Assert.IsTrue(meta.Insertar());
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