<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="Megastore.pages.PasswordRecovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightbarHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    <h2>Password Recovery</h2>
    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
        <p>
            Please providde email to recover password
        </p>
        <p>
            Your email address:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
            ControlToValidate="YourEmail" ValidationGroup="save" /><br />
            <asp:TextBox ID="YourEmail" runat="server" Width="250px" />
            <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
                SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                ValidationGroup="save" /><br />
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Send"
                OnClick="Button1_Click" ValidationGroup="save" />
        </p>
    </asp:Panel>
    <p>
        <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
    </p>
</asp:Content>
