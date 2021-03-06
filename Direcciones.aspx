﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Direcciones.aspx.cs" Inherits="Direcciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="default" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="Vertical" DataKeyNames="EmpleadoID" DataSourceID="SqlDataSourceGridViewDirecciones">
        <Columns>
            <asp:BoundField DataField="EmpleadoID" HeaderText="EmpleadoID" InsertVisible="False" ReadOnly="True" SortExpression="EmpleadoID" Visible="false" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
            <asp:BoundField DataField="TelfMobil" HeaderText="TelfMobil" SortExpression="TelfMobil" />
            <asp:CommandField SelectText="Ver detalles" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" GridLines="Vertical" Height="50px" Width="538px" DataSourceID="SqlDataSourceDetailsViewDirecciones">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
            <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            <asp:BoundField DataField="Postal" HeaderText="Postal" SortExpression="Postal" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            <asp:BoundField DataField="Extension" HeaderText="Extension" SortExpression="Extension" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSourceDetailsViewDirecciones" runat="server" ConnectionString="<%$ ConnectionStrings:Empresadb %>" SelectCommand="SELECT [Direccion], [Ciudad], [Estado], [Postal], [Telefono], [Extension] FROM [Empleados] WHERE ([EmpleadoID] = @EmpleadoID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="EmpleadoID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceGridViewDirecciones" runat="server" ConnectionString="<%$ ConnectionStrings:Empresadb %>" SelectCommand="SELECT [EmpleadoID], [Nombre], [Ciudad], [TelfMobil] FROM [Empleados]"></asp:SqlDataSource>
</asp:Content>

