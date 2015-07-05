<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="patient_record.aspx.cs" Inherits="Carolyn.patient_record" %>
<%@ Register src="Share/patient_record_uc.ascx" tagname="patient_record_uc" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <uc1:patient_record_uc ID="patient_record_uc1" runat="server" />
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
