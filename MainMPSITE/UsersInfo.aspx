<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UsersInfo.aspx.cs" Inherits="MainMPSITE.UsersInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/usersadmin.css" rel="stylesheet" />
    <script>
        function openInfo(x) {
            document.getElementById(x.id + "Info").classList.toggle('expand');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%if (!(bool)Session["admin"]) Response.Redirect("./main.aspx"); %>
    <div class="background">
        <div class="header">Users</div>
        <div>
            <%= userList%>
        </div>
    </div>
</asp:Content>
