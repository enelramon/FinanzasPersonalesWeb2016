using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class PersonasTests
    {
        [TestMethod()]
        public void InsertarTest()
        {
            Personas persona = new Personas();
            persona.Nombre = "Padilla";
            persona.AgregarTelefono(TiposTelefonos.Celular, "809-881-8988");
            persona.AgregarTelefono(TiposTelefonos.Casa, "809-881-8988");

            Assert.IsTrue( persona.Insertar());



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