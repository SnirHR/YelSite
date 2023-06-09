﻿<%@ Page Language="C#" Title="Admin" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Admin.aspx.cs" Inherits="YelSite.Pages.Admin" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" Runat="Server" >
    <div>
        <label id="lblCounter" runat="server">Currently there are </label>
        <br />
        Enter Text to search name:
        <input type="text" name="filter" id="filter" runat="server" />
        <i id="usertablecontainer" runat="server"></i>
        <br /><br />
        <asp:Button ID="btnFilter" runat="server" Text="Filter" OnClick="btnFilter_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <asp:Button ID="btnAdmin" runat="server" Text="Change to Admin" OnClick="btnAdmin_Click" />
        <asp:Button ID="btnMentor" runat="server" Text="Change to Mentor" OnClick="btnMentor_Click" />
        <asp:Button ID="btnStudent" runat="server" Text="Change to Student" OnClick="btnStudent_Click" />
        <br /><br />
    </div>
    <div>
        <br />
        <label for="Columns">Sort by Column:</label>
        <select id="Columns" runat="server">
            <option value="userId">userId</option>
            <option value="firstName">firstName</option>
            <option value="lastName">lastName</option>
            <option value="userName">userName</option>
            <option value="birthday">Birthday</option>
            <option value="Role">Role</option>
            <option value="Phone">Phone</option>
            <option value="Gender">Gender</option>
            <option value="Language">Language</option>
            <option value="EducationalBackground">EducationalBackground</option>
            <option value="Country">Country</option>
        </select>
        <select id="order" runat="server">
            <option value="ASC">ASC</option>
            <option value="DESC">DESC</option>
        </select>
        <br/>
        <asp:Button ID="btnSort" runat="server" Text="Sort" OnClick="BtnSort_Click" />
        <br /><br />
    </div>

    <div runat="server" id="message">
    </div>
    <div runat="server" id="message1">
    </div>
</asp:Content>