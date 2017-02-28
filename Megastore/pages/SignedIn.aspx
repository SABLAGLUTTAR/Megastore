<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignedIn.aspx.cs" Inherits="Megastore.pages.SignedIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="EmailLabel" runat="server" Text="E-mail: "></asp:Label>
            </td>
            <td>
               <asp:Label ID="emailText" runat="server"></asp:Label>
            </td>
            
        </tr>
        <tr>
            
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
                <asp:Button Text="Update"
                    OnClick="ValidateBtn_Click"
                    runat="server" />
                <asp:Button ID="ResetButton" runat="server" Text="Reset" CausesValidation="False" />
            </td>
            <td>
                <asp:Label runat="server" ID="lblResult"></asp:Label>
            </td>
        </tr>
        
        
          
                
                
           
            
        
    </table>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Orderbtn" Text="My orders"
                    OnClick="Orderbtn_Click"
                    runat="server" />
</asp:Content>
