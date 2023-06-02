<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentArticles.aspx.cs" MasterPageFile="~/Site.Master" Inherits="YelSite.Articles.StudentArticles" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="articles-container">
        <div class="article-preview">
            <img src="../Images/New.png" alt="Article for newbies" />
            <h2>The Power of Mentorship: A Guide for Students New to Mentoring</h2>
            <p>A short article providing new students with information and tips to learn better.</p>
            <a href="./NewStudent">Read More</a>
        </div>
        <div class="article-preview">
            <img src="../Images/Experienced.png" alt="Article for experienced" />
            <h2>Building Upon Past Success: Maximizing Your Mentorship Experience as a Returning Student</h2>
            <p>A short article providing experienced students with information and tips to learn better.</p>
            <a href="./ExperiencedStudent">Read More</a>
        </div>

    </div>
</asp:Content>