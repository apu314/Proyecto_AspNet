<%@ Page Title="apu314.com - Historial de incidencias" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Historial.aspx.cs" Inherits="Historial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="default" Runat="Server">
    <p>
        <asp:Label ID="lblPuesto" runat="server" Text="Puesto:" AssociatedControlID="tbxPuesto"></asp:Label>
        <asp:TextBox ID="tbxPuesto" runat="server" ToolTip="Introduce tu puesto." />
    </p>
</asp:Content>

