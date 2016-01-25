using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
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
            meta.AgregarMetas(18, 1, 200);
            
            Assert.IsTrue(meta.Insertar());
        }

        [TestMethod()]
        public void EditarTest()
        {
            Metas meta = new Metas();
            meta.MetaId = 17;
            meta.Descripcion = "Mi Meta Personal";
            meta.UsuarioId = 1;
            meta.AgregarMetas(17, 1, 200);

            Assert.IsTrue(meta.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {
            Metas meta = new Metas();
            meta.MetaId = 3;
            Assert.IsTrue(meta.Eliminar());
        }

        [TestMethod()]
        public void BuscarTest()
        {
            Metas meta = new Metas();
            Assert.IsTrue(meta.Buscar(16));
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Metas meta = new Metas();
            Assert.IsTrue(meta.Listado(" * "," 1=1 "," MetaId ").Rows.Count > 0);
        }
    }
}