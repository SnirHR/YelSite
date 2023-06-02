<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Articles.aspx.cs" Inherits="YelSite.Pages.Articles" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="~/Stylesheets/Articles.css" />
    <div id="container">
        <h1>Choose Your Role</h1>
        <div id="roles">
            <a class="role" href="../Articles/MentorArticles">Mentor</a>
            <a class="role" href="../Articles/StudentArticles">Student</a>
        </div>
    </div>
</asp:Content>
