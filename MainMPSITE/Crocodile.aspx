<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Crocodile.aspx.cs" Inherits="MainMPSITE.Info.Crocodile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./css/Info.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="info">
        <div class="image">
            <img src="./images/Crocodile.png" class="mainimg"/>
        </div>
        <div class="textbackground">
            <div class="text">
                <div class="title">The Crocodile Paradox</div>
               Another variant of the Liar Paradox actually helped shape language in the 16th century. A crocodile snatches a young boy from a riverbank. His mother pleads with the crocodile to return him, to which the crocodile replies that he will only return the boy safely if the mother can guess correctly whether or not he will indeed return the boy. There’s no problem if the mother guesses that the crocodile will return him—if she’s right, he is returned; if she’s wrong, the crocodile keeps him.
                <br />If she answers that the crocodile will not return him, however, we end up with a paradox: If she’s right and the crocodile never intended to return her child, then the crocodile has to return him, but in doing so breaks his word and contradicts the mother’s answer. On the other hand, if she’s wrong and the crocodile actually did intend to return the boy, the crocodile must then keep him even though he intended not to, thereby also breaking his word.
                <br />The Crocodile Paradox is such an ancient and enduring logic problem that in the Middle Ages the word crocodilite came to be used to refer to any similarly brain-twisting dilemma where you admit something that is later used against you, and crocodility is an equally ancient word for captious or fallacious reasoning

            </div>
        </div>
    </div>
</asp:Content>
