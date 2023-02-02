<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="hoursTable.aspx.cs" Inherits="mpSite.hoursTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/hoursTable.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table dir="rtl" class="Hours">
        <tr>
            <td class="empty" rowspan="2"></td>
            <td class="math" rowspan="2">מתמטיקה</td>
            <td class="pe" colspan="2">חנ"ג</td>
            <td class="agri" rowspan="2">חקלאות</td>
        </tr>
        <tr>
            <td class="agri">חקלאות</td>
            <td class="torah">מקרא</td>
        </tr>
        <tr><td colspan="5" class="break">הפסקה</td></tr>
        <tr>
            <td class="citizen" rowspan="2">אזרחות</td>
            <td class="english" colspan="2" rowspan="2">אנגלית</td>
            <td class="education">חינוך</td>
            <td class="expan" rowspan="2">הרחבות</td>
        </tr>
        <tr>
            <td class="math">מתמטיקה</td>
        </tr>
        <tr><td colspan="5" class="break">הפסקה</td></tr>
        <tr>
            <td class="education">חינוך</td>
            <td class="agri" rowspan="2">חקלאות</td>
            <td class="english">אנגלית</td>
            <td class="torah">מקרא</td>
            <td class="expan">הרחבות</td>
        </tr>
        <tr>
            <td class="citizen">אזרחות</td>
            <td class="citizen">אזרחות</td>
            <td class="farm">משק</td>
            <td class="torah">מקרא</td>
        </tr>
        <tr><td colspan="5" class="break">הפסקה / פיזור</td></tr>
        <tr>
            <td class="math" rowspan="2">מתמטיקה</td>
            <td class="expan" rowspan="2">הרחבות</td>
            <td class="citizen">אזרחות</td>
            <td class="farm" rowspan="2">משק</td>
            <td class="torah" rowspan="2">מקרא</td>


        </tr>
        <tr>
            <td class="break">פיזור</td>
        </tr>
        <tr><td colspan="5" class="break">פיזור</td></tr>

    </table>
</asp:Content>
