<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital.aspx.cs" Inherits="tarea3.Hospital" %>

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
            color: #FFFFCC;
            text-align: center;
            font-size: xx-large;
            background-color: #660066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Informacion Pacientes</strong></td>
                </tr>
                <tr>
                    <td>Nombre :
                        <asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="BInformacion" runat="server" BackColor="#990099" BorderColor="#660033" Height="44px" OnClick="BInformacion_Click" Text="Informacion" Width="137px" />
                        <br />
                        <br />
                        <asp:Label ID="Linformacion" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        Edad : <asp:TextBox ID="Tedad" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Sexo :
                        <asp:DropDownList ID="Dsexo" runat="server" DataSourceID="Sqlsexo" DataTextField="Descripcion" DataValueField="nombre">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Sqlsexo" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString2 %>" SelectCommand="SELECT * FROM [sexo]"></asp:SqlDataSource>
                        <br />
                        <br />
                        Domicilio : <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Calle :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Tcalle" runat="server" Width="430px"></asp:TextBox>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numero :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Tnumero" runat="server" Width="429px"></asp:TextBox>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cuidad :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Tciudad" runat="server" Width="429px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <br />
                        Telefono :
                        <asp:TextBox ID="Ttelefono" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Seguro :<asp:DropDownList ID="Dseguro" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="nombre">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString2 %>" SelectCommand="SELECT * FROM [seguro]"></asp:SqlDataSource>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BIngresar" runat="server" BackColor="#990099" BorderColor="#660033" Height="72px" OnClick="BIngresar_Click" Text="Ingresar" Width="184px" />
&nbsp;
                        <br />
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlHospital" Height="163px" Width="537px">
                            <Columns>
                                <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
                                <asp:BoundField DataField="domicilio" HeaderText="domicilio" SortExpression="domicilio" />
                                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                                <asp:BoundField DataField="seguro" HeaderText="seguro" SortExpression="seguro" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlHospital" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString2 %>" InsertCommand="insert into Paciente (nombre, edad, sexo, domicilio, telefono, seguro) values (@nombre,@edad,@sexo,@domocilio,@telefono,@seguro)
" SelectCommand="SELECT [nombre], [edad], [sexo], [domicilio], [telefono], [seguro] FROM [Paciente]">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="Tnombre" Name="nombre" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Tedad" Name="edad" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Dsexo" Name="sexo" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="Tcalle" Name="domocilio" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Ttelefono" Name="telefono" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Dseguro" Name="seguro" PropertyName="SelectedValue" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Bhospetalizados" runat="server" BackColor="#660066" BorderColor="#660033" Height="73px" OnClick="Bhospetalizados_Click1" Text="Hospetalizados" Width="207px" />
                        <br />
                        Niños :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Lninos" runat="server"></asp:Label>
                        <br />
                        <br />
                        Jovenes :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Ljovenes" runat="server"></asp:Label>
                        <br />
                        <br />
                        Adulto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Ladultos" runat="server"></asp:Label>
                        <br />
                        <br />
                        Hombres :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Lhombres" runat="server"></asp:Label>
                        <br />
                        <br />
                        Mujeres :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Lmujeres" runat="server"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BConsultar" runat="server" BackColor="#660066" BorderColor="#660033" Height="74px" OnClick="BConsultar_Click" Text="Consultar" Width="206px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        Asegurados:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Lasegurados" runat="server"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        NO Asegurados:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Lnoasegurados" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
