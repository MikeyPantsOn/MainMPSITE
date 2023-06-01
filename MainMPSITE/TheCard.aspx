<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TheCard.aspx.cs" Inherits="MainMPSITE.Info.TheCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./css/Info.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="info">
        <div class="image">
            <img src="./images/TheCard.png" class="mainimg"/>
        </div>
        <div class="textbackground">
            <div class="text">
                <div class="title">The Card Paradox</div>
               Imagine you’re holding a postcard in your hand, on one side of which is written, “The statement on the other side of this card is true.” We’ll call that Statement A. Turn the card over, and the opposite side reads, “The statement on the other side of this card is false” (Statement B). Trying to assign any truth to either Statement A or B, however, leads to a paradox: If A is true then B must be as well, but for B to be true, A has to be false. Oppositely, if A is false then B must be false too, which must ultimately make A true. The Card Paradox is a simple variation on the Liar Paradox that was invented by the British logician Philip Jourdain in the early 1900s.
            </div>
        </div>
    </div>
</asp:Content>
