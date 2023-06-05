<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TheLiar.aspx.cs" Inherits="MainMPSITE.Info.TheLiar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./css/Info.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="info">
        <div class="image">
            <img src="./images/TheLiar.png" class="mainimg"/>
        </div>
        <div class="textbackground">
            <div class="text">
                <div class="title">The Liar Paradox</div>
                One of Eubulides of Miletus’s more famous paradoxes, the Liar Paradox, is still discussed today. It has a very simple premise but a very mind-boggling result. Here it is: This sentence is false.
                <br />Think about it for a moment. If the statement is true, then that means that the sentence is in fact false, as it claims. But that would then mean that the sentence is false. And if the sentence “this sentence is false” is false, then that means it’s true. But, if it’s true that it’s false, then—you get the picture. It goes on and on, forever. 
            </div>
        </div>
    </div>
</asp:Content>
