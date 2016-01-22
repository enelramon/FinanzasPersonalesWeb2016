using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLLTests
{
    [TestClass]
    public class TiposUsuariosTest
    {
        [TestMethod]
        public void UsuariosTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void BuscarTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void EditarTest()
        {
            TiposUsuarios TipoUsuario = new TiposUsuarios();
            TipoUsuario.IdTipoUsuario = 1;
            TipoUsuario.Descripcion = "Usuario";

            Assert.IsTrue(TipoUsuario.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            TiposUsuarios TipoUsuario = new TiposUsuarios();

            TipoUsuario.Descripcion = "Administrador";

            Assert.IsTrue(TipoUsuario.Insertar());
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Assert.Fail();
        }
    }
}

