<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cCuentas.aspx.cs" Inherits="FinanzasPersonalesWeb.cCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 260px;
        }
        .auto-style2 {
            width: 613px;
            height: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ENCABEZADO</h1>
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LBuscarPor" runat="server" Text="Buscar Por:"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownBuscarPor" runat="server" Height="29px" Width="364px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="ButtonBuscarPor" runat="server" Text="Buscar" />
                    </td>
                </tr>
            </table>
            <table class="auto-style2" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: larger; font-weight: 100; font-style: inherit; font-variant: inherit; text-transform: inherit; color: #800000; border: thin groove #000000; visibility: inherit; list-style-type: disc">
                <asp:GridView ID="GridViewConsultaCuentas" runat="server" Width="600px">
                </asp:GridView>
            </table>
        </div>
        <div>
            <h1>PIE DE PAGINA</h1>
        </div>
    </form>
</body>
</html>
