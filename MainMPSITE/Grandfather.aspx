<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Grandfather.aspx.cs" Inherits="MainMPSITE.Info.Grandfather" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./css/Info.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="info">
        <div class="image">
            <img src="./images/Grandfather.png" class="mainimg"/>
        </div>
        <div class="textbackground">
            <div class="text">
                <div class="title">The Grandfather Paradox</div>
                All of us know that if you ever travel back in time, you should definitely not kill your own grandfather, lest you create some kind of temporal paradox-slash-rift in the space-time continuum. This problem, known as the Grandfather Paradox, presents the main problem of time travel: If you go back and prevent yourself from being born, how would you ever have been able to go back in time in the first place?            </div>
        </div>
    </div>
</asp:Content>
