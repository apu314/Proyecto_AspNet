<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Departamentos.aspx.cs" Inherits="Departamentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="default" Runat="Server">
    <asp:GridView EnableSortingAndPagingCallbacks="True" ID="GridView1"
        runat="server" CssClass="table table-striped table-hover" AllowPaging="True"
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DepartamentoID" DataSourceID="SqlDataSourceGridViewDepartamentos">
        <Columns>
            <asp:BoundField DataField="DepartamentoID" HeaderText="DepartamentoID" InsertVisible="False" ReadOnly="True" SortExpression="DepartamentoID" />
            <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceGridViewDepartamentos" runat="server" ConnectionString="<%$ ConnectionStrings:Empresadb %>" SelectCommand="SELECT * FROM [Departamentos]"></asp:SqlDataSource>
</asp:Content>

