<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminTools.aspx.cs" Inherits="AdminTools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="default" Runat="Server">
    <label class="col-lg-2  control-label">Selecciona el empleado</label>
    <asp:DropDownList ID="ddlEmpleado" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceAdminTools" DataTextField="Nombre" DataValueField="EmpleadoID"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceAdminTools" runat="server" ConnectionString="<%$ ConnectionStrings:Empresadb %>" SelectCommand="SELECT [EmpleadoID], [DepartamentoID], [Nombre], [Username], [Direccion], [Ciudad], [Estado], [Postal], [Telefono], [Extension], [TelfMobil] FROM [Empleados]"></asp:SqlDataSource>
    <asp:Button ID="btnMuestraEmpleado" runat="server" CssClass="btn btn-primary" Text="Mostrar empleado" OnClick="btnMuestraEmpleado_Click" />
    <asp:Label ID="resu" runat="server" CssClass="col-lg-2  control-label"></asp:Label>
    <table class="table table-striped table-hover table-condensed table-responsive">
        <tr>
            <td>
                <asp:Label ID="lblnombre" runat="server" CssClass="col-lg-2  control-label" Text="Nombre:" AssociatedControlID="tbxnombre"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxnombre" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblusuario" runat="server" CssClass="col-lg-2  control-label" Text="Usuario:" AssociatedControlID="tbxusuario"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxusuario" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldireccion" runat="server" CssClass="col-lg-2  control-label" Text="Dirección:" AssociatedControlID="tbxdireccion"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxdireccion" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblciudad" runat="server" CssClass="col-lg-2  control-label" Text="Ciudad:" AssociatedControlID="tbxciudad"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxciudad" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblestado" runat="server" CssClass="col-lg-2  control-label" Text="Estado:" AssociatedControlID="tbxestado"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxestado" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpostal" runat="server" CssClass="col-lg-2  control-label" Text="Código postal:" AssociatedControlID="tbxpostal"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxpostal" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbltelefono" runat="server" CssClass="col-lg-2  control-label" Text="Teléfono fijo:" AssociatedControlID="tbxtelefono"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxtelefono" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblextension" runat="server" CssClass="col-lg-2  control-label" Text="Extensión:" AssociatedControlID="tbxextension"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxextension" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmovil" runat="server" CssClass="col-lg-2  control-label" Text="Teléfono móvil:" AssociatedControlID="tbxmovil"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbxmovil" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnActualiza" runat="server" CssClass="btn btn-primary" Text="Actualizar" OnClick="btnActualiza_Click" />
            </td>
            <td>
                <asp:Button ID="btnBorra" runat="server" CssClass="btn btn-danger" Text="Borrar" OnClick="btnBorra_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

