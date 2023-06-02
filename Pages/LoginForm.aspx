<%@ Page Language="C#" Title="Login" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" MasterPageFile="~/Site.Master" Inherits="YelSite.Pages.LoginForm" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="logo-container">
        <a href="../" class="logo"></a>
    </div>
  <div id="form-container">
        <input id="Luser" placeholder="Enter Username" type="text" required="required" runat="server" />
        <input id="Lpassword" placeholder="Enter Password" type="password" required="required" runat="server" />
        <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="btn btn-primary submit" BorderColor="#008060" BackColor="#008060" OnClick="Login" />
        <button class="reset" type="reset">Reset</button>
        <a href="RegisterForm.aspx" class="login-toggle">Don't have an account?</a>
        <asp:Label ID="LlblError" runat="server" ForeColor="Red"></asp:Label>

    </div>
</asp:Content>