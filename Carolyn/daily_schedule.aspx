<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="daily_schedule.aspx.cs" Inherits="Carolyn.daily_schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form_default" runat="server">

    <div style="background-color: white !important" class="jumbotron">

        <div class="page-header">
            <h3><span class="glyphicon glyphicon-list-alt"></span>&nbsp;Itinerario Diario</h3>
            <p>Dietista: Carolyn Landrau</p>
        
            <asp:ValidationSummary ID="ValidationSummary1" CssClass="" runat="server" />
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>

            <div class="form-group">
                <label>Dia:</label>
                <input ID="txtDate" runat="server" class="form-control" placeholder="mm/dd/aaaa"/>
            </div>

        </div>

        <asp:ListView ID="lvSchedule" runat="server">
            <ItemTemplate>
                <%#Eval("HourSlotTime") %>:&nbsp;
            </ItemTemplate>
            <ItemSeparatorTemplate>
                <hr/>
            </ItemSeparatorTemplate>
        </asp:ListView>

    </div>

</form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
