using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class TransferenciasTests
    {
        [TestMethod()]
        public void TransferenciasTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            Transferencias transferencias = new Transferencias();
            transferencias.Fecha = "Prueba";
            transferencias.CuentaOrigenId = 1;
            transferencias.CuentaDestinoId = 2;
            transferencias.Monto = 1;
            transferencias.Observacion = "Prueba";
            transferencias.UsuarioId = 1;
            Assert.IsTrue(transferencias.Insertar());
        }
        [TestMethod()]
        public void EditarTest()
        {
            Transferencias transferencias = new Transferencias();
            transferencias.TransferenciaId = 1;
            transferencias.Fecha = "Prueba";
            transferencias.CuentaOrigenId = 2;
            transferencias.CuentaDestinoId = 2;
            transferencias.Monto = 2;
            transferencias.Observacion = "Prueba";
            transferencias.UsuarioId = 2;
            Assert.IsTrue(transferencias.Editar());
        }
        [TestMethod()]
        public void EliminarTest()
        {
            Transferencias transferencias = new Transferencias();
            transferencias.TransferenciaId = 3;
            Assert.IsTrue(transferencias.Eliminar());
        }
        [TestMethod()]
        public void BuscarTest()
        {
            Transferencias transferencias = new Transferencias();
            Assert.IsTrue(transferencias.Buscar(6));
        }
        [TestMethod()]
        public void ListadoTest()
        {
            Transferencias transferencias = new Transferencias();
            Assert.IsTrue(transferencias.Listado(" * ", "1=1", "").Rows.Count > 0);
        }
    }
}