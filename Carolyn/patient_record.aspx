<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="patient_record.aspx.cs" Inherits="Carolyn.patient_record" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form_default" runat="server">

<div style="background-color: white !important" class="jumbotron">

<h2><span class="glyphicon glyphicon-heart-empty"></span>&nbsp;Record del Paciente</h2>

<asp:ValidationSummary ID="ValidationSummary1" CssClass="alert alert-danger" runat="server" />
<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>

<h3><span class="label label-warning">Identificación</span></h3>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">

            <div class="form-group">
            <label>Nombre Completo<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="#a94442" runat="server" ControlToValidate="txtFullname" ErrorMessage="El nombre es requerido.">*</asp:RequiredFieldValidator></label>
            <input id="txtFullname" runat="server" class="form-control" placeholder="Nombre y apellidos..."/>
            </div>
    
            <div class="form-group">
            <label>Fecha de Expediente<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="#a94442" runat="server" ControlToValidate="txtRecordDate" ErrorMessage="La fecha es requerida.">*</asp:RequiredFieldValidator></label>
            <input id="txtRecordDate" runat="server" class="form-control"/>
            </div>

            <div class="form-group">
            <label>Fecha de Nacimiento<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="#a94442" runat="server" ControlToValidate="txtBirthdate" ErrorMessage="La fecha de nacimiento es requerida.">*</asp:RequiredFieldValidator></label>
            <input id="txtBirthdate" runat="server" onchange="getAge()" class="form-control" placeholder="mm/dd/aaaa"/>
            </div>

            <div class="form-group">
            <label>Edad</label>
            <input id="txtAge" runat="server" class="form-control" placeholder="Se calcula con la fecha de nacimiento"/>
            </div>

            <div class="form-group">
            <label>Dirección Residencial</label>
            <input id="txtAddressLine1" class="form-control" runat="server"/><br/>
            <input id="txtAddressLine2" class="form-control" runat="server"/>
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
            <input id="txtZipcode" class="form-control" runat="server"/>
            </div>

            <div class="form-group">
            <label>Pueblo</label>
            <input id="txtTown" class="form-control" runat="server"/>
            </div>

        </div>
        <div class="col-lg-6">
            
            <div class="form-group">
            <label>Ocupación</label>
            <input id="txtOcupation" class="form-control" runat="server"/>
            </div>

            <div class="form-group">
            <label>Teléfono Principal<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="#a94442" runat="server" ControlToValidate="txtMainPhone" ErrorMessage="El teléfono principal es requerido.">*</asp:RequiredFieldValidator></label>
            <input id="txtMainPhone" class="form-control" runat="server"/>
            </div>

            <div class="form-group">
            <label>Teléfono Secundario</label>
            <input id="txtSecondaryPhone" class="form-control" runat="server"/>
            </div>
    
            <div class="form-group">
            <label>Teléfono Trabajo</label>
            <input id="txtWorkPhone" class="form-control" runat="server"/>
            </div>

            <div class="form-group">
            <label>Email</label>
            <input id="txtEmail" class="form-control" runat="server"/>
            </div>

        </div>
    </div>
</div>

<h3><span class="label label-warning">Cuenta de usuario</span></h3>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
            <label>Contraseña</label>
            <input id="txtPassword" class="form-control" type="password" runat="server"/>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
            <label>Verifique contraseña</label>
            <input id="txtPassword2" class="form-control" type="password" runat="server"/>
            </div>
        </div>
    </div>
</div>

<h3><span class="label label-warning">Contacto de Emergencia</span></h3>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                <label>Nombre Completo</label>
                <input id="txtContactName" class="form-control" runat="server"/>
                </div>

                <div class="form-group">
                <label>Teléfono</label>
                <input id="txtContactPhone" class="form-control" runat="server"/>
                </div>

            </div>
            <div class="col-lg-6">
                    <div class="form-group">
                    <label>Relación</label>
                    <asp:DropDownList id="cmbRelationship" runat="server" CssClass="form-control">
                        <asp:ListItem>Amigo(a)</asp:ListItem>
                        <asp:ListItem>Custodio Legal</asp:ListItem>
                        <asp:ListItem>Esposo(a)</asp:ListItem>
                        <asp:ListItem>Hijo(a)</asp:ListItem>
                        <asp:ListItem>Madre</asp:ListItem>
                        <asp:ListItem>Padre</asp:ListItem>
                        <asp:ListItem>Tio(a)</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
    <script type="text/javascript">

        function getAge()
        {
            var today = new Date();
            var birthDate = new Date($('#ContentPlaceHolder1_txtBirthdate').val());
            var age = today.getFullYear() - birthDate.getFullYear();
            var m = today.getMonth() - birthDate.getMonth();
            if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
                age--;
            }

            $('#ContentPlaceHolder1_txtAge').val(age.toString());
        }
</script>
</asp:Content>    
