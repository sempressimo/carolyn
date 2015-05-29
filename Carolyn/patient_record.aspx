<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="patient_record.aspx.cs" Inherits="Carolyn.patient_record" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Record del Paciente</h1>
<asp:ValidationSummary ID="ValidationSummary1" CssClass="" runat="server" />
    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>
<h3>Identificación</h3>

    <table style="width: 100%;">
        <tr>
            <td>
                Nombre:</td>
            <td>
                <asp:TextBox ID="txtFullname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFullname" ErrorMessage="El nombre es requerido.">*</asp:RequiredFieldValidator>
            </td>
            <td>
                Fecha:</td>
            <td>
                <asp:TextBox ID="txtRecordDate" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtRecordDate" ErrorMessage="La fecha es requerida.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Fecha de nacimiento:</td>
            <td>
                <asp:TextBox ID="txtBirthdate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtBirthdate" 
                    ErrorMessage="La fecha de nacimiento es requerida.">*</asp:RequiredFieldValidator>
            </td>
            <td>
                Edad:</td>
            <td>
                <asp:TextBox ID="txtAge" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Dirección Residencial:</td>
            <td>
                <asp:TextBox ID="txtAddressLine1" runat="server"></asp:TextBox>
            &nbsp;<asp:TextBox ID="txtAddressLine2" runat="server"></asp:TextBox>
            </td>
            <td>
                Sexo:</td>
            <td>
                <asp:DropDownList ID="cmbSex" runat="server">
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>F</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Pueblo, Zipcode</td>
            <td>
                <asp:TextBox ID="txtZipcode" runat="server" 
                    ontextchanged="txtZipcode_TextChanged" Width="80px"></asp:TextBox>
            &nbsp;<asp:TextBox ID="txtTown" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Teléfono 
                principal:</td>
            <td>
                <asp:TextBox ID="txtMainPhone" runat="server"></asp:TextBox>
            </td>
            <td>
                Teléfono secundario:</td>
            <td>
                <asp:TextBox ID="txtSecondaryPhone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email (usuario):</td>
            <td colspan="3">
                <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Ocupación:</td>
            <td>
                <asp:TextBox ID="txtOcupation" runat="server"></asp:TextBox>
            </td>
            <td>
                Teléfono trabajo:</td>
            <td>
                <asp:TextBox ID="txtWorkPhone" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>

    <h3>Cuenta de usuario</h3>
    <table style="width: 100%;">
        <tr>
            <td>
                Contraseña:</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Verifique contraseña:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>

            <h3>Contacto de Emergencia</h3>
    <table style="width: 100%;">
        <tr>
            <td>
                Nombre:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                Relación:</td>
            <td>
                <asp:DropDownList ID="cmbRelationship" runat="server">
                    <asp:ListItem>Amigo(a)</asp:ListItem>
                    <asp:ListItem>Custodio Legal</asp:ListItem>
                    <asp:ListItem>Esposo(a)</asp:ListItem>
                    <asp:ListItem>Hijo(a)</asp:ListItem>
                    <asp:ListItem>Madre</asp:ListItem>
                    <asp:ListItem>Padre</asp:ListItem>
                    <asp:ListItem>Tio(a)</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Telefono:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lbSave" runat="server" onclick="lbSave_Click">Actualizar</asp:LinkButton>
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
