<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UsersAdmin.aspx.cs" Inherits="MainMPSITE.UsersAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/usersadmin.css" rel="stylesheet" />
    <script>
        function openInfo(x) {
            document.getElementById(x.id + "Info").classList.toggle('expand');
        }
        var so = document.getElementById("so");

        document.getElementById("so").addEventListener("change", function(){
            if (so.value == "admin") {
                document.getElementById("soadmin").display = block;
                document.getElementById("sogender").display = none;
                document.getElementById("soall").display = none;
            }
            if (so.value == "gender") {
                document.getElementById("soadmin").display = none;
                document.getElementById("sogender").display = block;
                document.getElementById("soall").display = none;
            }
            else {
                document.getElementById("soadmin").display = none;
                document.getElementById("sogender").display = none;
                document.getElementById("soall").display = block;
            }
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="background">
        <div class="header">Users</div>
        <div class="header"><%= sqlrequest %></div>
        <form method="post" runat="server">
             <select class="so" name="so" id="so">
                 <option value="all">All</option>
                 <optgroup label="Names">
                     <option value="username">Username</option>
                     <option value="firstname">First Name</option>
                     <option value="lastname">Last Name</option>
                 </optgroup>
                 <optgroup label="Personal">
                     <option value="gender">Gender</option>
                     <option value="phone">Phone Number</option>
                 </optgroup>
                 <optgroup label="Security">
                     <option value="email">Email</option>
                     <option value="pass">Password</option>
                     <option value="admin">Admin</option>
                 </optgroup>
             </select>
            <div style="font-size:20px;">
                <input type="radio" id="m" name="gender" value="m" checked>
                <label for="male">Male</label>
                <input type="radio" id="f" name="gender" value="f">
                <label for="female">Female</label>
            </div>
        </form>
        <br />
        <div>
            <%= userList %>
            <div>
                <button onclick="openInfo(this);" id="test" class="usersbutton">Test</button>
                <div id="testInfo" class="userInfo smalldesc">
                    <table class="tUsers">
                    <tr><td>First Name</td><td>Last Name</td><td>Email</td><td>Gender</td><td>Year Of Birth</td><td>Phone Number</td><td>Password</td><td>Is Admin?</td></tr>
                    <tr><td>Test-FNAME</td><td>Test-LNAME</td><td>Test-Email</td><td>Test-Email</td><td>Test-yearBorn</td><td>Test-Phone</td><td>Test-Pass</td><td>Test-Admin</td></tr>
                    </table>
                </div>

            </div>

        </div>
    </div>
</asp:Content>
