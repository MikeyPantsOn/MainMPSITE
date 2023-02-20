<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MainMPSITE.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    <style>
        .signupform{
            margin:auto; 
            width:fit-content;
            color:deepskyblue;
            font-size:26px;
            text-align:center;
            border-spacing: 5px 20px;
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
        }
        .signupform input[type=password], .signupform input[type=text]{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            text-align:center;
        }
        select.yob {
            width:80px;
            text-align:center;
            font-size:24px;
            font-family: 'Roboto';
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server">
        <table class="signupform">
            <tr>
                <td>Username:</td>
                <td colspan=2><input type="text" name="uName" id="uName"  /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td colspan=2><input type="text" name="Email" id="Email"  /></td>
                <td><%= emailErr %></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td colspan=2><input type="text" name="password" id="password"  /></td>
            </tr>
            <tr>
                <td>Rewrite Password:</td>
                <td colspan=2><input type="text" name="password" id="passwordcheck"  /></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="userFName" id="userFName"  /></td>
                <td>Last Name:</td>
                <td><input type="text" name="userLName" id="userLname"  /></td>
            </tr>   
            <tr>
                <td >Year Of Birth:</td>
                <td>
                    <select class="yob" name="yob" id="yob">
                        <%= yearOptions %>
                    </select>
                </td>
                
            </tr>
            <tr>
                <td >Phone Number:</td>
                <td colspan=2><input type="text" name="phonenumber" id="phonenumber"  /></td>
            </tr>
            <tr><td colspan="10"><input type="submit" name="submit" value="Submit"></td></tr>
        </table>
    </form>
</asp:Content>
