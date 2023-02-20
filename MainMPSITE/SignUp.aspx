<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MainMPSITE.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    <style>
        td {
            text-align:center;
        }
        .signupform{
            margin:auto; 
            width:fit-content;
            color:deepskyblue;
            font-size:26px;
            text-align:right;
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
            width: 80%;
            padding: 12px 20px;
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
    <form name="signupFrm" id="signupFrm" method="post" runat="server">
        <table class="signupform">
            <tr>
                <td></td>
                <td colspan=2>Username:<br /><input type="text" name="uName" id="uName"  /></td>
                <td></td>

            </tr>
            <tr>
                <td></td>

                <td colspan=2>Password:<br /><input type="password" name="password" id="password"/></td>
                <td></td>

            </tr>
            <tr>
                <td></td>

                <td colspan=2>Email: <br /><input type="text" name="email" id="Email"/></td>
                <td></td>
  
            </tr>
            <tr>
                <td></td>

                <td colspan="2">First Name:<br /> <input type="text" name="userFName" id="userFName"  /><br />Last Name: <input type="text" name="userLName" id="userLname"  /></td>
                <td></td>

            </tr>   
            <tr>
                <td></td>

                <td colspan=2>Year Of Birth:

                    <select class="yob" name="yob" id="yob">
                        <%= yearOptions %>
                    </select>
                </td>
                <td></td>
                
            </tr>
            <tr>
                <td></td>

                <td colspan=2>Gender:
                    <input type="radio" value="Male" name="gender" id="m"/>
                    <label for="m">Male</label>

                    <input type="radio" value="Female" name="gender" id="f"/>
                    <label for="f">Female</label>
                </td>
                <td></td>

            </tr>
            <tr>
                <td></td>
                <td colspan=2>Phone Number:<br /><input type="text" name="phoneNumber" id="phoneNumber"/></td>
                <td></td>
            </tr>
            <tr><td colspan="4"><%= msg %></td></tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <input type="submit" name="submit" value="Sign Up" />
                </td>
                <td></td>
            </tr>            
        </table>
    </form>
</asp:Content>
