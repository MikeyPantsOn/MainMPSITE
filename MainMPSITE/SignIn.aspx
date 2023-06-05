<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MainMPSITE.SignIn" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style>
        .loginform{
            font-family: 'Roboto', sans-serif;
            margin:auto; 
            margin-top:20px;
            width:fit-content;
            color:deepskyblue;
            font-size:32px;
            font-weight: 700;
            text-align:center;
            border-spacing: 5px 10px;
            background: rgb(130,0,57);
            background: radial-gradient(circle, rgba(130,0,57,0.95) 0%, rgba(0,58,125,0.2) 90%);
            background-size: 100% 100%;
            border-radius: 4px 8px;
            padding:20px;
            box-shadow: rgba(0,0,0, 0.4) 10px 10px 20px inset;
        }
        .loginform input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            text-align:center;
            transition: background-color cubic-bezier(.75,.05,.51,1.06) 0.5s, color linear 0.5s;
        }
        .loginform input[type=submit]:hover {
            background-color: white;
            color: #4CAF50;
        }
        .loginform input[type=password], .loginform input[type=text]{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .ErrMSG {
            font-size: 16px;
            width:fit-content;
            text-align:center;

        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            LoadInputs();
        }, false);
        function SaveInputs() {
            localStorage.setItem("username", document.getElementById("uName").value);
        }
        function LoadInputs() {
            document.getElementById("uName").value = localStorage.getItem("username");
        }
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="loginFrm" onsubmit="return SaveInputs()" id="loginFrm" method="post" runat="server">
        <br /><br /><br />
        <div class="loginform">
            <div>Username: </div>
            <div><input type="text" name="uName" id="uName" placeholder="Username"   /></div>
            <div>Password: </div>
            <div><input type="password" name="pw" id="pw" placeholder="Password"  /></div>
            <br />
            <div class="ErrMSG"><%= msg %></div>
            <div>
                <input type="submit" name="submit" value="Login" />
            </div>
        </div>
    </form>
</asp:Content>