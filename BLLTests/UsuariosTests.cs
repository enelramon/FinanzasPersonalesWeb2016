using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class UsuariosTests
    {
        [TestMethod()]
        public void UsuariosTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            Usuarios usuario = new Usuarios();

            //usuario.Descripcion = "cta ejemplo";
            //cuenta.Balance = 0;
            //
            //cuenta.Porciento = 0;

            Assert.IsTrue(usuario.Insertar());
        }

        [TestMethod()]
        public void BuscarTest()
        {
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
        public void ListadoTest()
        {
            Assert.Fail();
        }
    }
}