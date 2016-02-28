<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminTools.aspx.cs" Inherits="AdminTools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="default" Runat="Server">
    <asp:DropDownList ID="ddlEmpleado" runat="server" DataSourceID="SqlDataSourceAdminTools" DataTextField="Nombre" DataValueField="EmpleadoID"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceAdminTools" runat="server" ConnectionString="<%$ ConnectionStrings:Empresadb %>" SelectCommand="SELECT [EmpleadoID], [DepartamentoID], [Nombre], [Username], [Direccion], [Ciudad], [Estado], [Postal], [Telefono], [Extension], [TelfMobil] FROM [Empleados]"></asp:SqlDataSource>
    <asp:Button ID="btnMuestraEmpleado" runat="server" Text="Button" OnClick="btnMuestraEmpleado_Click" />
    <asp:Label ID="resu" runat="server"></asp:Label>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblnombre" runat="server" Text="Nombre:" AssociatedControlID="tbxnombre"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxnombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblusuario" runat="server" Text="Usuario:" AssociatedControlID="tbxusuario"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxusuario" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldireccion" runat="server" Text="Dirección:" AssociatedControlID="tbxdireccion"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxdireccion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblciudad" runat="server" Text="Ciudad:" AssociatedControlID="tbxciudad"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxciudad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblestado" runat="server" Text="Estado:" AssociatedControlID="tbxestado"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxestado" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpostal" runat="server" Text="Código postal:" AssociatedControlID="tbxpostal"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxpostal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbltelefono" runat="server" Text="Teléfono fijo:" AssociatedControlID="tbxtelefono"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxtelefono" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblextension" runat="server" Text="Extensión:" AssociatedControlID="tbxextension"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxextension" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmovil" runat="server" Text="Teléfono móvil:" AssociatedControlID="tbxmovil"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxmovil" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnActualiza" runat="server" Text="Button" OnClick="btnActualiza_Click" />
            </td>
            <td>
                <asp:Button ID="btnBorra" runat="server" Text="Button" OnClick="btnBorra_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

