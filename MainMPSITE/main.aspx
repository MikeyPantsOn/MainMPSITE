﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="mpSite.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/index.css" rel="stylesheet" />
    <script src="js/index.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="typewriter">
        <div class="headercontainer">
            <div class="header">Hello World!</div>
        </div>
    </div>
    <div class="info"></div>
</asp:Content>
