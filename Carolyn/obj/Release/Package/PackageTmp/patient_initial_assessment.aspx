<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="patient_initial_assessment.aspx.cs" Inherits="Carolyn.patient_initial_assessment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Initial Assessment</h1>

    <table style="width: 100%;">
        <tr>
            <td>
                Nombre del paciente:
            </td>
            <td>
                <asp:Label ID="lblPatientName" runat="server" Text=""></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Problemas:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        </table>

        <br/>
    <table style="width: 100%;">
        <tr>
            <td>
                Apetito:</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Bueno" />
&nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="Regular" />
&nbsp;<asp:CheckBox ID="CheckBox3" runat="server" Text="Pobre" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Nausea:</td>
            <td>
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox5" runat="server" Text="No" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Diarrea:</td>
            <td>
                &nbsp;<asp:CheckBox ID="CheckBox6" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox7" runat="server" Text="No" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Vomito:</td>
            <td>
                <asp:CheckBox ID="CheckBox8" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox9" runat="server" Text="No" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Estrenimiento:</td>
            <td>
                <asp:CheckBox ID="CheckBox10" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox11" runat="server" Text="No" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Problemas al masticar:</td>
            <td>
                <asp:CheckBox ID="CheckBox12" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox13" runat="server" Text="No" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Problemas al tragar:</td>
            <td>
                <asp:CheckBox ID="CheckBox14" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox15" runat="server" Text="No" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Cambio en gusto:</td>
            <td>
                <asp:CheckBox ID="CheckBox16" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox17" runat="server" Text="No" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Alergia(s) alimentos:</td>
            <td>
                <asp:CheckBox ID="CheckBox18" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox19" runat="server" Text="No" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Intolerancia a la lactosa:</td>
            <td>
                <asp:CheckBox ID="CheckBox20" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox21" runat="server" Text="No" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                ¿Barreras que afecten la ingesta de alimentos?</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Cambio en peso reciente:</td>
            <td>
                <asp:CheckBox ID="CheckBox22" runat="server" Text="Si" />
&nbsp;<asp:CheckBox ID="CheckBox23" runat="server" Text="No" />
            &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Medicamentos y/o Suplementos:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <h3>Laboratorios</h3>

    <p>TODO: Place form here, maybe as user control</p>

    <h3>Ingesta Dietaria Actual</h3>
    <table style="width: 100%;">
        <tr>
            <td>
                Gustos y Preferencias:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        </table>

    <h3>Metas</h3>

    <p>A Corto Plazo:</p>
    <asp:LinkButton ID="lbAddShortTermGoal" runat="server">Nueva Meta</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>

    <p>A Largo Plazo:</p>
    <asp:LinkButton ID="lbAddLongTermGoal" runat="server">Nueva Meta</asp:LinkButton>
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>


</asp:Content>
