<%@ Page Title="Inicio de sesión - apu314.com" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="login" Runat="Server">
    <h1>Login</h1>
    <asp:Login ID="Login1" runat="server" OnAuthenticate= "validaUsuario" BorderStyle="Solid" BorderWidth="1px"></asp:Login>
</asp:Content>

