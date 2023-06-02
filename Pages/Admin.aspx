<%@ Page Language="C#" Title="Admin" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Admin.aspx.cs" Inherits="YelSite.Pages.Admin" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" Runat="Server" >
    <div>
        <i id="usertablecontainer" runat="server"></i>
        <br />
        Enter Text to search name:
        <input type="text" name="filter" id="filter" runat="server" />
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
      <%--  <br />
        <label for="Columns">Sort by Column:</label>
        <select id="Columns" runat="server">
            <option value="userId">userId</option>
            <option value="firstName">firstName</option>
            <option value="lastName">lastName</option>
            <option value="userName">userName</option>
            <option value="admin">Admin</option>
            <option value="birthday">Birthday</option>
            <option value="city">City</option>
        </select>
        <input type="radio" id="ASC" name="order" value="ASC" checked/>
        <label for="ASC">ASC</label>
        <input type="radio" id="DESC" name="order" value="DESC" />
        <label for="DESC">DESC</label><br /><br />
        <asp:Button ID="btnSort" runat="server" Text="Sort" OnClick="BtnSort_Click" />
        <br /><br />--%>
    </div>

    <div runat="server" id="message">
    </div>
    <div runat="server" id="message1">
    </div>
</asp:Content>