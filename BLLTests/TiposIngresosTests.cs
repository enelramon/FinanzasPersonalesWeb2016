using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class TiposIngresosTests
    {
        TiposIngresos TipoIngreso = new TiposIngresos();

        [TestMethod()]
        public void TiposIngresosTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            TipoIngreso.Descripcion = "Otros";
            TipoIngreso.EsActivo = true;
            TipoIngreso.UsuarioId = 0;
            Assert.IsTrue(TipoIngreso.Insertar());
        }

        [TestMethod()]
        public void EditarTest()
        {
            TipoIngreso.TipoIngresoId = 4;
            TipoIngreso.Descripcion = "costo";
            TipoIngreso.EsActivo = false;
            TipoIngreso.UsuarioId = 0;
            Assert.IsTrue(TipoIngreso.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {
            TipoIngreso.TipoIngresoId = 4;
            Assert.IsTrue(TipoIngreso.Eliminar());
        }

        [TestMethod()]
        public void BuscarTest()
        {  
            Assert.IsTrue(TipoIngreso.Buscar(2));
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Assert.Fail();
        }
    }
}