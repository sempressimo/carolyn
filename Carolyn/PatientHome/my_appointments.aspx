<%@ Page Title="" Language="C#" MasterPageFile="~/PatientHome/PatientSite.Master" AutoEventWireup="true" CodeBehind="my_appointments.aspx.cs" Inherits="Carolyn.PatientHome.my_appointments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form_default" runat="server">

    <div style="background-color: white !important" class="jumbotron">

        <h3><span class="glyphicon glyphicon-time"></span>&nbsp;Mis Citas</h3>

        <asp:ValidationSummary ID="ValidationSummary1" CssClass="alert alert-danger" runat="server" />
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>

        <div class="alert alert-info alert-dismissible" role="alert">
            <strong>Aviso</strong>&nbsp;Tiene una cita pendiente en 3 días.
        </div>

        <asp:ListView ID="lvRecords" runat="server">
            <ItemTemplate>
                <div class="panel panel-primary">
                    <div class="panel-body">
                    <label><%#Convert.ToDateTime(Eval("Requested_DateTime")).ToShortDateString()%> <span class="alert"><%#Convert.ToDateTime(Eval("Requested_DateTime")).ToShortTimeString()%></span></label><br/>
                    Con: <%#Eval("Dietitian.FullName")%><br/>
                    Lugar: <%#Eval("Appointment_Locations.Appointment_Location_Description")%><br/>
                    Status: <label style="color: <%#this.GetStatusColor(Eval("Requested_DateTime").ToString(), Eval("Request_Status").ToString())%>;"><%#this.GetStatusText(Eval("Requested_DateTime").ToString(), Eval("Request_Status").ToString())%></label><br/>
                    <br/>
                    <asp:LinkButton ID="lbCancel" CssClass="btn btn-default" runat="server">Cancelar</asp:LinkButton>
                </div>
            </div>
            </ItemTemplate>
        </asp:ListView>

        <br/>

    </div>

</form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
