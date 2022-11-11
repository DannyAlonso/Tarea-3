<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital1.aspx.cs" Inherits="Tarea3._1.Hospital1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
            background-color: #000066;
        }
        .auto-style3 {
            width: 100%;
            height: 111px;
        }
        .auto-style4 {
            width: 100%;
            height: 111px;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style2"><strong>
                    <table class="auto-style1">
                        <tr>
                            <td><strong><span class="auto-style4">Hacer clic en la imagen para ingresar a los pacientes del paciemtes del Hospital!!</span></strong></td>
                        </tr>
                    </table>
                    </strong></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="360px" ImageUrl="~/imagenes/hospital1.jfif" OnClick="ImageButton1_Click" Width="1146px" />
    </form>
</body>
</html>
