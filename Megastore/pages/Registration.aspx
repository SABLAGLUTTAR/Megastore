<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Megastore.pages.Registration" %>


<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    <h2>Register</h2>

    <br />
    <br />
    <table>
        <tr>
            <td>
                <asp:Label ID="EmailLabel" runat="server" Text="E-mail: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="EmailTextbox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                    ControlToValidate="EmailTextbox"
                    ValidationExpression="^([a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]){1,70}$"
                    Display="Static"
                    ErrorMessage="Incorrect e-mail!"
                    EnableClientScript="False"
                    runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    ControlToValidate="EmailTextbox"
                    Display="Static"
                    ErrorMessage="E-mail required!"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="PasswordLabel" runat="server" Text="Password: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="PasswordTextbox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    ControlToValidate="PasswordTextbox"
                    ValidationExpression="^[a-zA-Z0-9'@&#.\s]{10,20}$"
                    Display="Static"
                    ErrorMessage="Password length must be at least 10 characters!"
                    EnableClientScript="False"
                    runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    ControlToValidate="PasswordTextbox"
                    Display="Static"
                    ErrorMessage="Password required!"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="FNLabel" runat="server" Text="First name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="FNTextbox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                    ControlToValidate="FNTextbox"
                    ValidationExpression="^[a-zA-Z0-9'@&#.\s]{1,20}$"
                    Display="Static"
                    ErrorMessage="Name length must be at least 1 character!"
                    EnableClientScript="False"
                    runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                    ControlToValidate="FNTextbox"
                    Display="Static"
                    ErrorMessage="*"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LNLabel" runat="server" Text="Last name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="LNTextbox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
                    ControlToValidate="LNTextbox"
                    ValidationExpression="^[a-zA-Z0-9'@&#.\s]{1,20}$"
                    Display="Static"
                    ErrorMessage="Name length must be at least 1 character!"
                    EnableClientScript="False"
                    runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                    ControlToValidate="LNTextbox"
                    Display="Static"
                    ErrorMessage="*"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="AddressLabel" runat="server" Text="Address: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AddressTextbox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
                    ControlToValidate="AddressTextbox"
                    ValidationExpression="^[\w ]{2,30}$"
                    Display="Static"
                    ErrorMessage="Must be between 2 to 30 characters!"
                    EnableClientScript="False"
                    runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                    ControlToValidate="AddressTextbox"
                    Display="Static"
                    ErrorMessage="*"
                    runat="server" />
            </td>
        </tr>
        <tr><td></td></tr>
        <tr>
            <td>
                <asp:Button Text="Register"
                    OnClick="ValidateBtn_Click"
                    runat="server" />
                <asp:Button ID="ResetButton" runat="server" OnClick="ResetButton_Click" Text="Reset" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>
