<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" MasterPageFile="~/Site.Master" Inherits="YelSite.Pages.ChangePassword" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <script src="./Login.js" runat="server"></script>
    <div class="logo-container">
        <a href="../" class="logo"></a>
    </div>
  <div id="form-container">
        <input id="oldPassword" placeholder="Enter old Password" type="password" required="required" runat="server" />
        <input id="newPassword" placeholder="Enter new Password" type="password" required="required" runat="server" />
        <asp:Button ID="ChangeButton" runat="server" Text="Change" CssClass="btn btn-primary submit" BorderColor="#008060" BackColor="#008060" OnClick="ChangeButton_Click" />
        <asp:Label ID="ClblError" runat="server" ForeColor="Red"></asp:Label>

    </div>
</asp:Content>
