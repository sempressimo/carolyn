﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Carolyn.login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>100x35 Dietitian Virtual Office - Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/login.css" />
        <link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/form.css" />

        <script src="Scripts/jquery-2.1.4.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div style="margin-top:5%" class="container">

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger mysummary"/>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>

            <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-centered">
    
                <div class="login-main white shadow">

                    <asp:Image runat="server" ImageUrl="~/images/logo.jpg" CssClass="img-responsive logo" />
                    <asp:Panel ID="Panel1" runat="server" DefaultButton="lbLogin">
                        <div class="form-group">
                            <input ID="txtUsername" runat="server" placeholder="Username" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <input ID="txtPassword" runat="server" type="password" placeholder="Password" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <p>&nbsp;</p>
                                <asp:LinkButton ID="lbLogin" runat="server" OnClick="lbLogin_Click" CssClass="mybutton btn-block bold whitetext blue rounded">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/login.png" />
                                    <asp:Label runat="server" Text="Entrar al Sistema"></asp:Label>
                                </asp:LinkButton>
                        </div>
                            <div class="form-group">
                        </div>

                    </asp:Panel>

                </div>

            </div>

           
        </div>

    </form>
</body>
</html>
