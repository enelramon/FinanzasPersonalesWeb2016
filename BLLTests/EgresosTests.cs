using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class EgresosTests
    {
        [TestMethod()]
        public void EgresosTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            Egresos egreso = new Egresos();

            egreso.Fecha = "11/10/2016";
            egreso.CuentaId = 1;
            egreso.MiembroId = 1;
            egreso.TipoEgresoId = 1;
            egreso.Monto = 0.0f;
            egreso.Observacion = "";
            Assert.IsTrue(egreso.Insertar());
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