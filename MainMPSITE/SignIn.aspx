﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MainMPSITE.SignIn" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style>
        .loginform{
            margin:auto; 
            width:fit-content;
            color:deepskyblue;
            font-size:26px;
        }
        .loginform input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
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
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="loginFrm" id="loginFrm" method="post" runat="server">
        <br /><br /><br />
        <div class="loginform">
            <div>Username: </div>
            <div><input type="text" name="uName" id="uName"  /></div>
            <div>Password: </div>
            <div><input type="password" name="pw" id="pw"  /></div>
            <br />
            <div>
                <input type="submit" name="submit" value="Login" />
            </div>
        </div>
    </form>
</asp:Content>