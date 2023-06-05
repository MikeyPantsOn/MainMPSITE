<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Pinocchio.aspx.cs" Inherits="MainMPSITE.Info.Pinocchio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./css/Info.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="info">
        <div class="image">
            <img src="./images/Pinocchio.png" class="mainimg"/>
        </div>
        <div class="textbackground">
            <div class="text">
                <div class="title">The Pinocchio Paradox</div>
                The Liar’s Paradox has been discussed and adapted many times, eventually leading to the Pinocchio Paradox. It follows the same general structure, but with an added visual component. Imagine Pinocchio uttering the statement “My nose grows longer now.” If he’s telling the truth, then his nose should grow longer, like he said. But as we know, Pinocchio’s nose only grows if he’s telling a lie. Which means that if his nose did grow longer, then the statement would have been false. But if “my nose grows longer now” is false, then it should not have grown in the first place … Has your brain exploded yet?
                <br />This version of the paradox was created in 2001 by philosopher Peter Eldridge-Smith’s 11-year-old daughter. He summarized it neatly like this: "Pinocchio’s nose will grow if and only if it does not.”
            </div>
        </div>
    </div>
</asp:Content>
