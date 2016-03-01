<%@ Page Title="Inicio de sesión - apu314.com" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="login" Runat="Server">
    <div class="row">
        <h1>Login</h1>
        <asp:Login ID="Login1" runat="server" OnAuthenticate= "validaUsuario" BorderStyle="Solid" BorderWidth="1px">
            <LayoutTemplate>
                <table cellspacing="0" cellpadding="1" style="border-collapse: collapse;">
                    <tr>
                        <td>
                            <table class="center-block" cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2">Iniciar sesión</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de usuario:</asp:Label></td>
                                    <td>
                                        <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Login1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:Label></td>
                                    <td>
                                        <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="Login1" ToolTip="La contrase&#241;a es obligatoria." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:CheckBox runat="server" Text="Record&#225;rmelo la pr&#243;xima vez." ID="RememberMe"></asp:CheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: Red;">
                                        <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button runat="server" CommandName="Login" Text="Inicio de sesi&#243;n" ValidationGroup="Login1" ID="LoginButton" CssClass="btn btn-success"></asp:Button>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </LayoutTemplate>
        </asp:Login>
    </div>
</asp:Content>

