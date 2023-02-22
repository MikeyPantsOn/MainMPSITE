<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MainMPSITE.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%//if ((bool)Session["admin"]) {%>
        <div class="background">
            <input type="submit" id="Users" class="pagesbutton" value="Users" />
            

        </div>
    <%//}else Response.Redirect("main.aspx");%>
</asp:Content>
