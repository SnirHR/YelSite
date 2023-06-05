<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentArticles.aspx.cs" MasterPageFile="~/Site.Master" Inherits="YelSite.Articles.StudentArticles" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="articles-container">
        <div class="article-preview">
            <img src="../Images/New.png" alt="Article for newbies" />
            <h2>7 Key Tips for New Bridge Players: Making the Most of Your First Competition</h2>
            <p>A short article providing new students with information and tips to learn better.</p>
            <a href="./NewStudent">Read More</a>
        </div>
        <div class="article-preview">
            <img src="../Images/Experienced.png" alt="Article for experienced" />
            <h2>7 Effective Strategies for Intermediate Bridge Players: Enhancing Your Logical Thinking</h2>
            <p>A short article providing experienced students with information and tips to learn better.</p>
            <a href="./ExperiencedStudent">Read More</a>
        </div>

    </div>
</asp:Content>