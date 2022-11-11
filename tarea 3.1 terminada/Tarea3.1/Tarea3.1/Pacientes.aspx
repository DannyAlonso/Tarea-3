<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pacientes.aspx.cs" Inherits="Tarea3._1.Pacientes" %>

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
            color: #FFFFFF;
            text-align: center;
            background-color: #660066;
        }
        .auto-style3 {
            width: 670px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Informacion Pacientes</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp; ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Tid" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BInformacion" runat="server" BackColor="#990099" BorderColor="#660033" Height="55px" OnClick="BInformacion_Click" Text="Informacion" Width="161px" />
                    <br />
                    <br />
                    <br />
                    <br />
                    Nombre :
                    <asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:Button ID="Bborrar" runat="server" BackColor="#990099" BorderColor="#660033" Height="55px" OnClick="Bborrar_Click" Text="Borrar" Width="161px" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlPacientes1">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                            <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                            <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
                            <asp:BoundField DataField="calle" HeaderText="calle" SortExpression="calle" />
                            <asp:BoundField DataField="numeroCalle" HeaderText="numeroCalle" SortExpression="numeroCalle" />
                            <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                            <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                            <asp:BoundField DataField="seguro" HeaderText="seguro" SortExpression="seguro" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlPacientes1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>" SelectCommand="SELECT * FROM [Paciente] where id = @id">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Tid" Name="id" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:Label ID="Linformacion" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    Edad :
                    <asp:TextBox ID="Tedad" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Sexo :
                    <asp:DropDownList ID="Dsexo" runat="server" DataSourceID="Sqlsexo" DataTextField="Descripcion" DataValueField="nombre">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlsexo" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>" SelectCommand="SELECT * FROM [sexo]"></asp:SqlDataSource>
                    <br />
                    <br />
                    Domicilio :
                    <br />
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
                    Seguro :<asp:DropDownList ID="Dseguro" runat="server" DataSourceID="Sqlseguro" DataTextField="Descripcion" DataValueField="nombre">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlseguro" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>" SelectCommand="SELECT * FROM [seguro]"></asp:SqlDataSource>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BIngresar" runat="server" BackColor="#990099" BorderColor="#660033" Height="72px" OnClick="BIngresar_Click" Text="Ingresar" Width="184px" />
                    &nbsp; </td>
                <td>
                   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlPacientes" Height="261px" Width="425px">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                            <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                            <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
                            <asp:BoundField DataField="calle" HeaderText="calle" SortExpression="calle" />
                            <asp:BoundField DataField="numeroCalle" HeaderText="numeroCalle" SortExpression="numeroCalle" />
                            <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                            <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                            <asp:BoundField DataField="seguro" HeaderText="seguro" SortExpression="seguro" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlPacientes" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital1ConnectionString %>" DeleteCommand="delete Paciente where  nombre= @nombre
" InsertCommand="insert into Paciente (nombre, edad, sexo, calle, numeroCalle, ciudad, telefono, seguro) values (@nombre,@edad,@sexo,@calle,@numeroCalle,@ciudad,@telefono,@seguro)" SelectCommand="SELECT * FROM [Paciente] ">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="Tnombre" Name="nombre" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Tnombre" Name="nombre" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tedad" Name="edad" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Dsexo" Name="sexo" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="Tcalle" Name="calle" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tnumero" Name="numeroCalle" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tciudad" Name="ciudad" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tciudad" Name="telefono" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Dseguro" Name="seguro" PropertyName="SelectedValue" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                   
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
                    Asegurados:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Lasegurados" runat="server"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    NO Asegurados:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Lnoasegurados" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </form>
</body>
</html>
