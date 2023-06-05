<%@ Page Language="C#" Title="Profile" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" MasterPageFile="~/Site.Master" Inherits="YelSite.Pages.ProfilePage" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="logo-container">
        <a href="../" class="logo"></a>
        <link type="text/css" rel="stylesheet" href="../Stylesheets/Profile.css" runat="server" />
    </div>
     <div>
            <h2 class="title">Profile Information</h2>
            <table>
                <tr>
                    <td>Username:</td>
                    <td><asp:Label ID="lblUsername" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><asp:Label ID="lblFirstName" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><asp:Label ID="lblLastName" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>ID Tag:</td>
                    <td><asp:Label ID="lblIdTag" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Birthday:</td>
                    <td><asp:Label ID="lblBirthday" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><a class="center" href="~/Pages/ChangePassword" runat="server">Click to change password</a></td>
                </tr>
                <tr>
                    <td>Educational Background:</td>
                    <td><asp:Label ID="lblEducationalBackground" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Role:</td>
                    <td><asp:Label ID="lblRole" runat="server"></asp:Label></td>
                </tr>
            </table>
            <br />
        </div>
</asp:Content>