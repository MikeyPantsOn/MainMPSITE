<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UsersAdmin.aspx.cs" Inherits="MainMPSITE.UsersAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/usersadmin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="background">
        <div class="header">Users</div>
        <div class="header"><%= sqlrequest %></div>
        <br />
        <div>
            <%= userList %>

        </div>
    </div>
</asp:Content>
