<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="imageTable.aspx.cs" Inherits="mpSite.imageTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/imageTable.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%if (Session["uName"].ToString() != "guest")
        {%>
            <%=msg %>
            <form name="imageForm" id="imageForm" method="post" runat="server" UseSubmitBehaviour="true">
                <table class="images" style="margin-top:2%;" dir="ltr">
                    <tr>
                        <td><img type="submit"  onclick="moveToPage(this);" class="tdata" onmouseover="setMainImage(this);" src="./images/AchillesAndTheTortoise.png"/></td>
                        <td colspan="2"><img type="submit"  onclick="moveToPage(this);" class="tdata" onmouseover="setMainImage(this);" src="./images/Grandfather.png"/></td>
                        <td><img type="submit" onclick="moveToPage(this);" class="tdata" onmouseover="setMainImage(this);" src="./images/Bootstrap.png"/></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td><img type="submit"  onclick="moveToPage(this);" class="tdata" onmouseover="setMainImage(this);" src="./images/Theseus.png" /></td>
                        <td colspan="2" rowspan="2" width="240" height="340"><img style="margin:0px;" width="220" id="mainImage" /></td>
                        <td><img type="submit"  onclick="moveToPage(this);" class="tdata" onmouseover="setMainImage(this);" src="./images/TheLiar.png" /></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td><img type="submit" onclick="moveToPage(this);" class="tdata" onmouseover="setMainImage(this);" src="./images/Pinocchio.png" /></td>
                        <td colspan="2"><img type="submit"  onclick="moveToPage(this);" class="tdata" onmouseover="setMainImage(this);" src="./images/TheCard.png" /></td>
                        <td><img type="submit"  onclick="moveToPage(this);" class="tdata" onmouseover="setMainImage(this);" src="./images/Crocodile.png"/></td>
                    </tr>
                </table>
                <input name="page" id="page" type="text" value="">
            </form>
    <%} else 
        { %>
            <div class="noaccess">Please Sign In Before Accessing This Page</div>
    <% }%>
        <script src="./js/imageTable.js"></script>
</asp:Content>
