<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MainMPSITE.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lato:wght@400&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap');
        .signupform{
            font-family: 'Montserrat', sans-serif;
            font-weight:600;
            letter-spacing: 1px;
            margin:auto; 
            margin-top:20px;
            width:fit-content;
            color:deepskyblue;
            font-size:26px;
            text-align:center;
            border-spacing: 5px 10px;
            background: rgb(130,0,57);
            background: radial-gradient(circle, rgba(130,0,57,0.95) 0%, rgba(0,58,125,0.2) 90%);
            background-size: 100% 100%;
            border-radius: 2px 4px;
            padding:20px;
            box-shadow: rgba(0,0,0, 0.4) 10px 10px 20px inset;
        }
        .signupform input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align:center;
            transition: background-color cubic-bezier(.75,.05,.51,1.06) 0.5s, color linear 0.5s;
        }
        .signupform input[type=submit]:hover {
            background-color: white;
            color: #4CAF50;
        }
        .signupform input[type=password], .signupform input[type=text]{
            width: 70%;
            font-family: 'Lato', sans-serif;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            text-align:center;
            font-size:18px;
            background: rgb(255,231,242);
            background: radial-gradient(circle, rgba(255,231,242,1) 0%, rgba(224,227,255,1) 100%);
        }

        select.yob {
            width:80px;
            text-align:center;
            font-size:24px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            line-height: 60px;
            margin-left:10px;

        }
        select.yob option:hover {
            background: rgb(134, 134, 134);
        }
        .ErrMSG {
            font-size:14px;
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            LoadInputs();
        }, false);
        function SaveInputs() {
            localStorage.setItem("username", document.getElementById("uName").value);
            localStorage.setItem("email", document.getElementById("Email").value);
            localStorage.setItem("userfname", document.getElementById("userFname").value);
            localStorage.setItem("userlname", document.getElementById("userLname").value);
            localStorage.setItem("yob", document.getElementById("yob").value);
            localStorage.setItem("phonenumber", document.getElementById("phonenumber").value);
        }
        function LoadInputs() {
            document.getElementById("uName").value = localStorage.getItem("username");
            document.getElementById("Email").value = localStorage.getItem("email");
            document.getElementById("userFname").value = localStorage.getItem("userfname");
            document.getElementById("userLname").value = localStorage.getItem("userlname");
            document.getElementById("yob").value = localStorage.getItem("yob");
            document.getElementById("phonenumber").value = localStorage.getItem("phonenumber");
        }
        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server">

        <table class="signupform fancyshadow">
            
            <tr>
                <td></td>
                <td colspan="2">Username:<br /><input type="text" name="uName" id="uName"  /></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="10" class="ErrMSG"><%= uNameErr %></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">Email:<br /><input type="text" name="Email" id="Email"  /></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="10" class="ErrMSG"><%= emailErr %></td>
            </tr>
            <tr>
                <td></td>
                <td >Password:<br /><input type="password" name="Password" id="Password"  /></td><td>Rewrite Password:<br /><input type="password" name="PasswordCheck" id="PasswordCheck"  /></td>
            </tr>
            <tr>
                <td colspan="10" class="ErrMSG"><%= passErr %></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">First Name:<br /><input type="text" name="userFname" id="userFname"  /><br />Last Name:<br /><input type="text" name="userLname" id="userLname"  /></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="10" class="ErrMSG"><%= pNameErr %></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">Phone Number:<br /><input type="text" name="phonenumber" id="phonenumber"  /></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">Year Of Birth:
                    <select AutoPostBack="True" class="yob" name="yob" id="yob">
                        <%= yearOptions %>
                    </select>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">Gender:
                    <div style="font-size:20px;">
                        <input type="radio" id="male" name="gender" value="male" checked>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="gender" value="female">
                        <label for="female">Female</label>
                    </div>
                </td>
                <td></td>
            </tr>
            <tr><td colspan="4"><input type="submit" name="submit" onclick="SaveInputs()" value="Submit"></td></tr>
        </table>
    </form>
</asp:Content>
