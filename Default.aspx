<%@ Page Title="Bienvenido a la intranet de apu314.com" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="default" Runat="Server">
    <h1>Empresas colaboradoras</h1>
    <div>
        
    </div>
    <h1>Eventos y Noticias</h1>
    <div>
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSourceAdRotator" />
        <asp:XmlDataSource ID="XmlDataSourceAdRotator" runat="server" DataFile="~/AdRotator.xml"></asp:XmlDataSource>
    </div>
</asp:Content>