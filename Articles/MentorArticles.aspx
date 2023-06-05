<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="MentorArticles.aspx.cs" Inherits="YelSite.Articles.MentorArticles" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="articles-container">
        <div class="article-preview">
            <img src="../Images/New.png" alt="Article for newbies" />
            <h2>7 Vital Tips for New Bridge Mentors: Guiding the Future Bridge Masters</h2>
            <p>A short article providing new students with information and tips to learn better.</p>
            <a href="./NewMentor">Read More</a>
        </div>
        <div class="article-preview">
            <img src="../Images/Experienced.png" alt="Article for experienced" />
            <h2>7 Key Strategies for Experienced Bridge Mentors: Nurturing Advanced Bridge Talents</h2>
            <p>A short article providing experienced students with information and tips to learn better.</p>
            <a href="./ExperiencedMentor">Read More</a>
        </div>
    </div>
</asp:Content>