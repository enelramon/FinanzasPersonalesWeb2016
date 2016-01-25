using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class TiposEgresosTests
    {
        [TestMethod()]
        public void TiposEgresosTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            TiposEgresos egreso = new TiposEgresos();
            egreso.Descripcion = "JEIJRTIE";
            egreso.EsActivo = true;
            egreso.UsuarioId = 1;
            
            Assert.IsTrue(egreso.Insertar());
        }

        [TestMethod()]
        public void EditarTest()
        {
            TiposEgresos egreso = new TiposEgresos();
            egreso.TipoEgresoId = 1;
            egreso.Descripcion = "KSAJDKS";
            egreso.EsActivo = true;
            egreso.UsuarioId = 1;

            Assert.IsTrue(egreso.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {
            TiposEgresos egreso = new TiposEgresos();
            egreso.TipoEgresoId = 1;

            Assert.IsTrue(egreso.Eliminar());
        }

        [TestMethod()]
        public void BuscarTest()
        {
            TiposEgresos egreso = new TiposEgresos();

            Assert.IsTrue(egreso.Buscar(2));
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Assert.Fail();
        }
    }
}