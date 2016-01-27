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
            egreso.Observacion = "Salida para pago de luz";
            Assert.IsTrue(egreso.Insertar());
        }

        [TestMethod()]
        public void EditarTest()
        {
            Egresos egreso = new Egresos();

            egreso.Fecha = "11/10/2016";
            egreso.CuentaId = 1;
            egreso.MiembroId = 1;
            egreso.TipoEgresoId = 1;
            egreso.Monto = 10000.0f;
            egreso.Observacion = "Salida para pago de colegio";
            Assert.IsTrue(egreso.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {

            Egresos egreso = new Egresos();
            egreso.EgresoId = 2;
            Assert.IsTrue(egreso.Eliminar());
        }

        [TestMethod()]
        public void BuscarTest()
        {
            Egresos egreso = new Egresos();
            Assert.IsTrue(egreso.Buscar(12));
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Egresos egreso = new Egresos();
            Assert.IsTrue(egreso.Listado(" * ", "1=1", "").Rows.Count > 0);
        }
    }
}