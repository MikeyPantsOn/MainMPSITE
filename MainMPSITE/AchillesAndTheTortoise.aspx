<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AchillesAndTheTortoise.aspx.cs" Inherits="MainMPSITE.Info.AchillesAndTheTortoise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./css/Info.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="info">
        <div class="image">
            <img src="./images/AchillesAndTheTortoise.png" class="mainimg"/>
        </div>
        <div class="textbackground">
            <div class="text">
                <div class="title">The Paradox of Achilles and the Tortoise</div>
                The Paradox of Achilles and the Tortoise is one of a number of theoretical discussions of movement put forward by the Greek philosopher Zeno of Elea in the 5th century BCE. It begins with the great hero Achilles challenging a tortoise to a footrace. To keep things fair, he agrees to give the tortoise a head start of, say, 500 meters. When the race begins, Achilles unsurprisingly starts running at a speed much faster than the tortoise, so that by the time he has reached the 500-meter mark, the tortoise has only walked 50 meters further than him. But by the time Achilles has reached the 550-meter mark, the tortoise has walked another 5 meters. And by the time he has reached the 555-meter mark, the tortoise has walked another 0.5 meters, then 0.25 meters, then 0.125 meters, and so on. This process continues again and again over an infinite series of smaller and smaller distances, with the tortoise always moving forwards while Achilles always plays catch up.
                <br />Logically, this seems to prove that Achilles can never overtake the tortoise—whenever he reaches somewhere the tortoise has been, he will always have some distance still left to go no matter how small it might be. Except, of course, we know intuitively that he can overtake the tortoise. The trick here is not to think of Zeno’s Achilles Paradox in terms of distances and races, but rather as an example of how any finite value can always be divided an infinite number of times, no matter how small its divisions might become.
            </div>
        </div>
    </div>
</asp:Content>
