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

            usuario.Nombre = "Prueba";
            usuario.Usuario = "prueba1";
            usuario.Password = "prueba123";
            usuario.Email = "a@a.com";
            usuario.TipoUsuarioId = 1;

            Assert.IsTrue(usuario.Insertar());
        }

        [TestMethod()]
        public void EditarTest()
        {
            Usuarios usuario = new Usuarios();

            usuario.UsuarioId = 2;
            usuario.Nombre = "Prueba Editada";
            usuario.Usuario = "editado";
            usuario.Password = "prueba123";
            usuario.Email = "a@a.com";
            usuario.TipoUsuarioId = 1;

            Assert.IsTrue(usuario.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {
            Usuarios usuario = new Usuarios();

            usuario.UsuarioId = 4;

            Assert.IsTrue(usuario.Eliminar());
        }

        [TestMethod()]
        public void BuscarTest()
        {
            Usuarios usuario = new Usuarios();

            Assert.IsTrue(usuario.Buscar(1));
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Usuarios usuario = new Usuarios();
            Assert.IsTrue(usuario.Listado(" * ", "1=1", "").Rows.Count > 0);
        }
    }
}