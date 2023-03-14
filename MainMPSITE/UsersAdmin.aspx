<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UsersAdmin.aspx.cs" Inherits="MainMPSITE.UsersAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/usersadmin.css" rel="stylesheet" />
    <script>
        function openInfo(x) {
            document.getElementById(x.id + "Info").classList.toggle('expand');
        }
        var so = document.getElementById("so");
        window.addEventListener('load', function () {
            LoadInfo();
            document.getElementById("so").addEventListener("change", function () {
                var so = document.getElementById("so");
                if (so.value == "Admin") {
                    document.getElementById("soadmin").style.display = "block";
                    document.getElementById("sogender").style.display = "none";
                    document.getElementById("soyearborn").style.display = "none";
                    document.getElementById("soall").style.display = "none";
                }
                else if (so.value == "Gender") {
                    console.log("gender");
                    document.getElementById("soadmin").style.display = "none";
                    document.getElementById("sogender").style.display = "block";
                    document.getElementById("soyearborn").style.display = "none";
                    document.getElementById("soall").style.display = "none";
                }
                else if (so.value == "yearBorn") {
                    document.getElementById("soadmin").style.display = "none";
                    document.getElementById("sogender").style.display = "none";
                    document.getElementById("soyearborn").style.display = "block";
                    document.getElementById("soall").style.display = "none";
                }
                else if (so.value == "all") {
                    document.getElementById("soadmin").style.display = "none";
                    document.getElementById("sogender").style.display = "none";
                    document.getElementById("soyearborn").style.display = "none";
                    document.getElementById("soall").style.display = "none";
                }
                else {
                    document.getElementById("soadmin").style.display = "none";
                    document.getElementById("sogender").style.display = "none";
                    document.getElementById("soyearborn").style.display = "none";
                    document.getElementById("soall").style.display = "block";
                }
            });

        });
        function SaveInfo() {
            var so = document.getElementById("so");
            localStorage.setItem("so",so.value);
            if(so.value == "Gender") localStorage.setItem("gender", document.getElementById("sogender").value);
            else if(so.value == "Admin") localStorage.setItem("admin", document.getElementById("soadmin").value);
            else if(so.value == "yearBorn") localStorage.setItem("yearborn", document.getElementById("soyearborn").value);
            else  localStorage.setItem("all", document.getElementById("soallsearch").value);
        }
        function LoadInfo() {
            if (localStorage.getItem("so") == null) return;
            document.getElementById("so").value = localStorage.getItem("so");
            var so = document.getElementById("so");



            if (so.value == "Gender") {
                document.getElementById("gender").value = localStorage.getItem("gender");
                document.getElementById("sogender").style.display = "block";
                document.getElementById("soall").style.display = "none";
            }
            else if (so.value == "Admin") {
                document.getElementById("admin").value = localStorage.getItem("admin");
                document.getElementById("soadmin").style.display = "block";
                document.getElementById("soall").style.display = "none";
            }
            else if (so.value == "yearBorn") {
                document.getElementById("yearBorn").value = localStorage.getItem("yearborn");
                document.getElementById("soyearborn").style.display = "block";
                document.getElementById("soall").style.display = "none";
            }
            else document.getElementById("soallsearch").value = localStorage.getItem("all");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="background">
        <div class="header">Users</div>
        <div class="header"><%= sqlrequest %></div>
        <form method="post" runat="server" class="adminsearch">
             <select class="so" name="so" id="so">
                 <option value="all">All</option>
                 <optgroup label="Names">
                     <option value="Username" selected="selected">Username</option>
                     <option value="FirstName">First Name</option>
                     <option value="LastName">Last Name</option>
                 </optgroup>
                 <optgroup label="Personal">
                     <option value="Gender">Gender</option>
                     <option value="Phone">Phone Number</option>
                     <option value="yearBorn">Year Of Birth</option>
                 </optgroup>
                 <optgroup label="Security">
                     <option value="Email">Email</option>
                     <option value="Pass">Password</option>
                     <option value="Admin">Admin</option>
                 </optgroup>
             </select><br />
            <div id="soall" style="font-size:20px;">
                <input type="text" name="soallsearch" id="soallsearch"  />
            </div>
            <div id="sogender" style="font-size:20px; display:none;">
                <input type="radio" id="m" name="gender" value="m" checked>
                <label for="m">Male</label>
                <input type="radio" id="f" name="gender" value="f">
                <label for="f">Female</label>
            </div>
            <div id="soadmin" style="font-size:20px; display:none;">
                <input type="radio" id="True" name="admin" value="T" checked>
                <label for="True">Is Admin</label>
                <input type="radio" id="False" name="admin" value="F">
                <label for="False">Is Not Admin</label>
            </div>
            <div id="soyearborn" style="font-size:20px; display:none;">
                <select class="so" name="so" id="yearborn">
                 <option value="all">All</option>
                    </select>
            </div>
            <input type="submit" name="submit" onclick="SaveInfo()" value="Submit">
        </form>
        <br />
        <div>
            <%= userList %>
            <%= strdebug %>
            

        </div>
    </div>
</asp:Content>
