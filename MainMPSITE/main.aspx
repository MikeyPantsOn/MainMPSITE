<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="mpSite.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/index.css" rel="stylesheet" />
    <script>
        window.onload = function () {
            ClearInputs();
        };
        function ClearInputs() {
            console.log(localStorage.getItem("email") + "hello");
            localStorage.removeItem("email");
            localStorage.removeItem("userfname");
            localStorage.removeItem("username");
            localStorage.removeItem("userlname");
            localStorage.removeItem("yob");
            localStorage.removeItem("phonenumber");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div onload="ClearInputs()" class="typewriter">
        <div class="headercontainer">
            <div class="header">PARDOXES</div>
        </div>
    </div>
    <div class="info">
        <div class="title">What Is A Paradox?</div>
        <div class="text">
            A paradox is a logically self-contradictory statement or a statement that runs contrary to one's expectation. It is a statement that, despite apparently valid reasoning from true premises, leads to a seemingly self-contradictory or a logically unacceptable conclusion. A paradox usually involves contradictory-yet-interrelated elements that exist simultaneously and persist over time. They result in "persistent contradiction between interdependent elements" leading to a lasting "unity of opposites".
            In logic, many paradoxes exist that are known to be invalid arguments, yet are nevertheless valuable in promoting critical thinking, while other paradoxes have revealed errors in definitions that were assumed to be rigorous, and have caused axioms of mathematics and logic to be re-examined. One example is Russell's paradox, which questions whether a "list of all lists that do not contain themselves" would include itself, and showed that attempts to found set theory on the identification of sets with properties or predicates were flawed. Others, such as Curry's paradox, cannot be easily resolved by making foundational changes in a logical system.
            <br /><br />Examples outside logic include the ship of Theseus from philosophy, a paradox that questions whether a ship repaired over time by replacing each and all of its wooden parts, one at a time, would remain the same ship. Paradoxes can also take the form of images or other media. For example, M.C. Escher featured perspective-based paradoxes in many of his drawings, with walls that are regarded as floors from other points of view, and staircases that appear to climb endlessly.
            <br /><br />In common usage, the word "paradox" often refers to statements that are ironic or unexpected, such as "the paradox that standing is more tiring than walking".
        </div>
    </div>
    <div class="info featured">
        <div class="title">Featured Pardoxes</div>
        <div class="text">
            <div class="subtitle">The "Liar Paradox":</div>
            The Liar Paradox is a famous paradox that arises from a statement that says, "This statement is false." If the statement is true, then it must be false, but if it is false, then it must be true. This paradox demonstrates the self-referential and contradictory nature of the statement.
            <br /><a href="TheLiar.aspx">Click Me To See More!</a><br /><br />
            <div class="subtitle">The "Grandfather Paradox":</div>
            The Grandfather Paradox is a thought experiment that explores the concept of time travel. It proposes that if a person were to travel back in time and kill their own grandfather before the conception of their parent, it would create a paradox. This paradox arises from the question of what would happen to the time traveler's existence if their own birth becomes impossible.
            <br /><a href="Grandfather.aspx">Click Me To See More!</a><br /><br />
            <div class="subtitle">The "Bootstrap Paradox":</div>
            The Bootstrap Paradox refers to a situation in which an object or information exists without having been created. It is named after the idiom "pulling oneself up by one's bootstraps." In this paradox, an object or information is sent back in time and becomes the inspiration or cause of its own creation. The paradox lies in the fact that the object or information has no discernible origin. It raises questions about causality and the logical flow of events.
            <br /><a href="Bootstrap.aspx">Click Me To See More!</a>
            <br /><br /><a href="imageTable.aspx">To The Full Catalog -></a>

        </div>
    </div>
</asp:Content>
