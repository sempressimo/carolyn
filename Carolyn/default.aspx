<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Carolyn._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form_default" runat="server">

    <div style="background-color: white !important" class="jumbotron">

        <h3>Dashboard</h3>

        <div class="well well-sm">
            Vista / acceso rapido a cosas pendientes...
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <button class="btn btn-primary btn-block" type="button">
                    <span class="glyphicon glyphicon-user">&nbsp</span>Citas para Hoy <span class="badge">10</span>
                    </button>
                    <br/>
                </div>
                <div class="col-lg-3">
                    <button class="btn btn-success btn-block" type="button" onclick="window.location = 'skype:some_skype_user?chat';">
                    <span class="glyphicon glyphicon-user">&nbsp</span>Citas por Skype <span class="badge">1</span>
                    </button>
                    <br/>
                </div>
                <div class="col-lg-3">
                    <button class="btn btn-warning btn-block" type="button">
                    <span class="glyphicon glyphicon-user">&nbsp</span>Mensajes <span class="badge">2</span>
                    </button>
                    <br/>
                </div>
                <div class="col-lg-3">
                    <button class="btn btn-warning btn-block" type="button">
                    <span class="glyphicon glyphicon-user">&nbsp</span>Pacientes Nuevos<span class="badge">2</span>
                    </button>
                    <br/>
                </div>
            </div>
        </div>
    </div>

</form>

</asp:Content>