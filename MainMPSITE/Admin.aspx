<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MainMPSITE.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%if (!(bool)Session["admin"]) Response.Redirect("./main.aspx"); %>
    <div class="background">
        <a href="UsersAdmin.aspx" class="pagesbutton" value="Users" >Users</a>
        <a href="UsersInfo.aspx" class="pagesbutton" value="UsersInfo" >Users Info</a>
    </div>
</asp:Content>
