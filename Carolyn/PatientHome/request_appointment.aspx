<%@ Page Title="" Language="C#" MasterPageFile="~/PatientHome/PatientSite.Master" AutoEventWireup="true" CodeBehind="request_appointment.aspx.cs" Inherits="Carolyn.PatientHome.request_appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form_default" runat="server">

    <div style="background-color: white !important" class="jumbotron">

        <h3><span class="glyphicon glyphicon-time"></span>&nbsp;Solicitar Cita</h3>

        <asp:ValidationSummary ID="ValidationSummary1" CssClass="alert alert-danger" runat="server" />
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>

        <div class="alert alert-warning alert-dismissible" role="alert">
            <strong>Aviso</strong>&nbsp;Esto solo una solicitud, recibirá confirmación por email si el espacio es confirmado por la nutricionista.
        </div>

        <div class="form-group">
            <label>Dietista</label>
            <asp:DropDownList ID="cmbDietitian" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Fecha<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="#a94442" runat="server" ControlToValidate="txtDate" ErrorMessage="La fecha es requerida.">*</asp:RequiredFieldValidator></label>
            <input id="txtDate" runat="server" class="form-control" placeholder="mm/dd/aaaa" maxlength="10"/>
        </div>

        <div class="form-group">
            <label>Hora<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="#a94442" runat="server" ControlToValidate="txtTime" ErrorMessage="La hora es requerida.">*</asp:RequiredFieldValidator></label>
            <input id="txtTime" runat="server" class="form-control" placeholder="8:00AM a 5:00PM" maxlength="8"/>
        </div>

        <div class="form-group">
            <label>Lugar</label>
            <asp:DropDownList ID="cmbLocation" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Commentarios</label>
            <textarea id="txtComments" runat="server" cols="1" rows="3" class="form-control" placeholder="Motivo de la cita o otro..." maxlength="100"></textarea>
        </div>

        <div class="form-group pull-right">
            <asp:LinkButton ID="lbSave" runat="server" onclick="lbSave_Click" CssClass="btn btn-primary">Actualizar</asp:LinkButton>
            <asp:LinkButton ID="lbCancel" runat="server" CssClass="btn btn-default" OnClick="lbCancel_Click">Cancel</asp:LinkButton>
        </div>

        <br/>

    </div>

</form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
