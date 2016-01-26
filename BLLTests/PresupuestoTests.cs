using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class PresupuestoTests
    {
        Presupuesto presupuesto = new Presupuesto(2, 1, "prueba");
    

        [TestMethod()]
        public void PresupuestoTest()
        {
            
        }

        [TestMethod()]
        public void InsertarTest()
        {
            presupuesto.AgregarDetalle(1, 500);

            Assert.IsTrue(presupuesto.Insertar());
        }

        [TestMethod()]
        public void EditarTest()
        {
            Presupuesto editado = new Presupuesto(4, 5, "prueba 2");

            editado.AgregarDetalle(3, 5001);

            Assert.IsTrue(editado.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {
            presupuesto.AgregarDetalle(3, 5001);

            Assert.IsTrue(presupuesto.Eliminar());
        }

        [TestMethod()]
        public void BuscarTest()
        {
            
            presupuesto.AgregarDetalle(3, 5001);

            Assert.IsTrue(presupuesto.Buscar(2));
        }

        [TestMethod()]
        public void ListadoTest()
        {
            presupuesto.AgregarDetalle(3, 5001);

            Assert.IsTrue( presupuesto.Listado("*","1=1","").Rows.Count > 0);
        }

        [TestMethod()]
        public void AgregarDetalleTest()
        {
            presupuesto.AgregarDetalle(3, 5001);
            Assert.IsTrue(presupuesto.Detalle.Count > 0);
        }
    }
}