<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false"
    CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="logincart" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">
    <form id="form1" runat="server">
    <div class="container">
        <div class="col-md-offset-2 col-md-8">
            <h1 align="center">
                One account. All of SafetyCode.</h1>
        </div>
    </div>
    <div class="account">
        <div class="container">
            <div class="account-bottom">
                <div class="col-md-6 account-left">
                    <div class="account-top heading">
                        <h3>
                            Register</h3>
                        <p>
                            Don&#39;t have an account? Sign up now!</p>
                        <p>
                    <div class="address new">
                            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
                                ContinueButtonText="Continue to Login" 
                                ContinueDestinationPageUrl="Login.aspx">
                                <WizardSteps>
                                    <asp:CreateUserWizardStep runat="server">
                                        <ContentTemplate>
                                            <table>
                                                <tr>
                                                    <td align="left" class="style1">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                        &nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td class="style1" style="width: 230px">
                                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                            ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                        &nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td style="width: 230px">
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                                            ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                                            AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                                        &nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td style="width: 230px">
                                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                                            ControlToValidate="ConfirmPassword" 
                                                            ErrorMessage="Confirm Password is required." 
                                                            ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                                        &nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td style="width: 230px">
                                                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                                            ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                                            ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                                        &nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td style="width: 230px">
                                                        <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                                            ControlToValidate="Question" ErrorMessage="Security question is required." 
                                                            ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                                        &nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td style="width: 230px">
                                                        <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                                            ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                                            ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                            ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                                            Display="Dynamic" 
                                                            ErrorMessage="The Password and Confirmation Password must match." 
                                                            ValidationGroup="CreateUserWizard1" Height="34px"></asp:CompareValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color:Red;">
                                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:CreateUserWizardStep>
                                    <asp:CompleteWizardStep runat="server" >
                                        <ContentTemplate>
                                            <table>
                                                <tr>
                                                    <td align="center">
                                                        Complete</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Your account has been successfully created.</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:CompleteWizardStep>
                                </WizardSteps>
                            </asp:CreateUserWizard>
                        </p>
                    </div>
                </div>
            </div>
                <div class="col-md-6 account-left">
                    <div class="account-top heading">
                        <h3>
                            Training Firm Log-In</h3>
                        <p>
                            &nbsp;</p>
                    </div>
                    <div class="address new">
                    <asp:login id="userLogin" runat="server" loginbuttontext="Submit" titletext="" 
                            width="300px" DestinationPageUrl="admin/dashboard.aspx">
                            <LayoutTemplate>
                                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                    <tr>
                                        <td>
                                            <table cellpadding="0" style="width:328px; border-collapse:collapse;">
                                                <style>
                                                td {
                                                    padding-bottom: 1em;
                                                }
                                                </style>
                                                <tr>
                                                    <td align="left">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" runat="server" Width="220px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                            ToolTip="User Name is required." ValidationGroup="userLogin">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                                            ToolTip="Password is required." ValidationGroup="userLogin">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <style>
                                                        .checkbox
                                                        {
                                                            padding-left:5px;
                                                        }
                                                    </style>
                                                    <td colspan="2">
                                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." 
                                                            CssClass="checkbox"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" colspan="2" style="color:Red;">
                                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                                            validationgroup="userLogin"/>

                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                <tr>
                                                    <td align="right" colspan="2">
                                                            <asp:Button ID="LoginButton" runat="server" Text="Log In" CommandName="Login" 
                                                                ValidationGroup="userLogin" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:login>
                    </div>
                </div>
                <div class="clearfix">
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
