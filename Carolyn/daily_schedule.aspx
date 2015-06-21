<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="daily_schedule.aspx.cs" Inherits="Carolyn.daily_schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form_default" runat="server">

    <div style="background-color: white !important" class="jumbotron">

        <h2><span class="glyphicon glyphicon-heart-empty"></span>&nbsp;Itinerario Diario</h2>

        <asp:ValidationSummary ID="ValidationSummary1" CssClass="" runat="server" />
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>



    </div>

</form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
