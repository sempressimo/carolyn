<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="patient_record.aspx.cs" Inherits="Carolyn.patient_record" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form_default" runat="server">

<div style="background-color: white !important" class="jumbotron">

<h2><span class="glyphicon glyphicon-heart-empty"></span>&nbsp;Record del Paciente</h2>

<asp:ValidationSummary ID="ValidationSummary1" CssClass="" runat="server" />
<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>

<!-- Will leave validators here for now -->
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname" ErrorMessage="El nombre es requerido.">*</asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRecordDate" ErrorMessage="La fecha es requerida.">*</asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBirthdate" ErrorMessage="La fecha de nacimiento es requerida.">*</asp:RequiredFieldValidator>

<h3><span class="label label-info">Identificación</span></h3>

    <div class="form-group">
    <label>Nombre Completo</label>
    <input ID="txtFullname" runat="server" class="form-control" placeholder="Nombre y apellidos..."/>
    </div>
    
    <div class="form-group">
    <label>Fecha de Expediente</label>
    <input ID="txtRecordDate" runat="server" class="form-control"/>
    </div>

    <div class="form-group">
    <label>Fecha de Nacimiento</label>
    <input ID="txtBirthdate" runat="server" class="form-control"/>
    </div>

    <div class="form-group">
    <label>Edad</label>
    <input ID="txtAge" runat="server" class="form-control" placeholder="Se calcula automagicamente con la fecha de nacimiento"/>
    </div>

    <div class="form-group">
    <label>Dirección Residencial</label>
    <input ID="txtAddressLine1" class="form-control" runat="server"/><br/>
    <input ID="txtAddressLine2" class="form-control" runat="server"/>
    </div>

    <div class="form-group">
        <label>Sexo</label>
        <asp:DropDownList runat="server" CssClass="form-control" ID="cmbSex" >
        <asp:ListItem Value="M">Masculino</asp:ListItem>
        <asp:ListItem Value="F">Femenino</asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="form-group">
    <label>Zip Code</label>
    <input ID="txtZipcode" class="form-control" runat="server"/>
    </div>

    <div class="form-group">
    <label>Pueblo</label>
    <input ID="txtTown" class="form-control" runat="server"/>
    </div>

    <div class="form-group">
    <label>Ocupación</label>
    <input ID="txtOcupation" class="form-control" runat="server"/>
    </div>

    <div class="form-group">
    <label>Teléfono Principal</label>
    <input ID="txtMainPhone" class="form-control" runat="server"/>
    </div>

    <div class="form-group">
    <label>txtSecondaryPhone</label>
    <input ID="txtSecondaryPhone" class="form-control" runat="server"/>
    </div>
    
    <div class="form-group">
    <label>Teléfono Trabajo</label>
    <input ID="txtWorkPhone" class="form-control" runat="server"/>
    </div>

    <div class="form-group">
    <label>Email</label>
    <input ID="txtEmail" class="form-control" runat="server"/>
    </div>

<h3><span class="label label-info">Cuenta de usuario</span></h3>

    <div class="form-group">
    <label>Contraseña</label>
    <input ID="txtPassword" class="form-control" runat="server"/>
    </div>

    <div class="form-group">
    <label>Verifique contraseña</label>
    <input ID="txtPassword2" class="form-control" runat="server"/>
    </div>

<h3><span class="label label-info">Contacto de Emergencia</span></h3>

    <div class="form-group">
    <label>Nombre Completo</label>
    <input ID="txtContactName" class="form-control" runat="server"/>
    </div>

    <div class="form-group">
        <label>Relación</label>
        <asp:DropDownList ID="cmbRelationship" runat="server" CssClass="form-control">
            <asp:ListItem>Amigo(a)</asp:ListItem>
            <asp:ListItem>Custodio Legal</asp:ListItem>
            <asp:ListItem>Esposo(a)</asp:ListItem>
            <asp:ListItem>Hijo(a)</asp:ListItem>
            <asp:ListItem>Madre</asp:ListItem>
            <asp:ListItem>Padre</asp:ListItem>
            <asp:ListItem>Tio(a)</asp:ListItem>
        </asp:DropDownList>
    </div>

    <br/>

    <div class="form-group pull-right">
        <asp:LinkButton ID="lbSave" runat="server" onclick="lbSave_Click" CssClass="btn btn-primary">Actualizar</asp:LinkButton>
        <asp:LinkButton ID="lbCancel" runat="server" CssClass="btn btn-default" OnClick="lbCancel_Click">Cancel</asp:LinkButton>
    </div>

    <br/>

</div> <!-- jumbotron -->

</form>
</asp:Content>
