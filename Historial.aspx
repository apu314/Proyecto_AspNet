﻿<%@ Page Title="apu314.com - Historial de incidencias" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Historial.aspx.cs" Inherits="Historial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="default" Runat="Server">
    <div>
        <asp:Label ID="LabelAviso" runat="server" Text=""></asp:Label>
        <br />
        <label for="tbxPuesto" >Puesto:</label>
        <br />
        <asp:TextBox ID="tbxPuesto" runat="server"></asp:TextBox>
        <br />
        <br />
        <label for="ddlCategoria">Categoría del problema:</label>
        <br />
        <asp:DropDownList ID="ddlCategoria" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="Categoria" DataValueField="CategoriaID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:Empresadb %>" SelectCommand="SELECT [Categoria], [CategoriaID] FROM [Categorias]"></asp:SqlDataSource>
        <br />
        <br />
        <label for="ddlIncidencia">Tipo de incidencia:</label>
        <br />
        <asp:DropDownList ID="ddlIncidencia" runat="server" DataSourceID="SqlDataSourceTipoIncidencia" DataTextField="Asunto" DataValueField="AsuntoID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceTipoIncidencia" runat="server" ConnectionString="<%$ ConnectionStrings:Empresadb %>" SelectCommand="SELECT [Asunto], [AsuntoID] FROM [Incidencias]"></asp:SqlDataSource>
        <br />
        <br />
        <label for="TextArea1">Descripción del problema:</label>
        <br />
        <asp:TextBox id="txtaDescripcion" TextMode="multiline" Columns="50" Rows="5" runat="server" /><br />
        <asp:Button ID="btnRegistrar" runat="server" Text="Enviar" OnClick="btnRegistrar_Click" />
        <asp:Label ID="resu" runat="server"></asp:Label>
    </div>
</asp:Content>

