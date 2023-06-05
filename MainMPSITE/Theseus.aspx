<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Theseus.aspx.cs" Inherits="MainMPSITE.Info.Theseus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./css/Info.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="info">
        <div class="image">
            <img src="./images/Theseus.png" class="mainimg"/>
        </div>
        <div class="textbackground">
            <div class="text">
                <div class="title">The Ship of Theseus Paradox</div>
                One of the more famous paradoxes, thanks in part to the Marvel show WandaVision, is the Ship of Theseus Paradox. Here’s a brief summary.
                <br />Theseus was a mythical king and the hero of Athens. (He was the guy who slayed the Minotaur, amongst other feats.) He did a lot of sailing, and his famed ship was eventually kept in an Athenian harbor as a sort of memorial/museum piece. As time went on, the ship’s wood began to rot in various places. Those wooden pieces were replaced, one by one. As time went on, more pieces needed replacing. The process of replacing rotten planks with new ones continued, at least in modern versions of the paradox, until the entire ship was made up of new pieces of wood. This thought experiment asks the question: Is this completely refurbished vessel still the ship of Theseus?
                <br />Let’s take it a step further: What if someone else took all of the discarded, original pieces of wood and reassembled them into a ship. Would this object be Theseus’s ship? And if so, what do we make of the restored ship sitting in the harbor? Which is the original ship?
                <br />This paradox is all about the nature of identity over time, and has been the subject of philosophical discussions for thousands of years. It appears in other forms, such as the Question of the Grandfather’s Axe and Trigger’s Broom, both of which ask whether an object remains the same after all the aggregate parts have been replaced. 
                <br />The idea even expands to questions of personal identity. If a person changes drastically over time, so much so that who they are no longer matches any part of who they once were, are they still the same person?

            </div>
        </div>
    </div>
</asp:Content>
