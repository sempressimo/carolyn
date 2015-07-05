<%@ Page Title="" Language="C#" MasterPageFile="~/PatientHome/PatientSite.Master" AutoEventWireup="true" CodeBehind="my_record.aspx.cs" Inherits="Carolyn.PatientHome.my_record" %>
<%@ Register src="../Share/patient_record_uc.ascx" tagname="patient_record_uc" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <uc1:patient_record_uc ID="patient_record_uc1" runat="server" />
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>
