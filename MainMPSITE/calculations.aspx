<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="calculations.aspx.cs" Inherits="mpSite.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/calculations.css" rel="stylesheet" />
    <script src="js/calculations.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sidepanel">
        Amount of questions
        <div class="in">
            <input type="number" id="calsAmount" class="calsAmount" />
        </div>
        <div id="badCalsAmount"></div>

        <div class="responsebutton" onclick="setCalsAmount()">Submit</div>
    </div>
    <div class="mainbackground" id="mbg">
        <div class="miniheader">
            please complete the calculations<br />(On division questions that dont round up, enter the 2 numbers after the dot, like 1.22 3.12 etc..)
        </div>
        <div class="calculations" id="calculations">
        </div>
        <div class="responses">
            <div class="responsebutton" onclick="checkAnswers()">Submit</div>
            <div class="responsebutton" onclick="load()">Reset</div>
        </div>
        <br />
    </div>
</asp:Content>
