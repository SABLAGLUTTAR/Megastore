<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Megastore.pages.admin.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Title: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Author: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Year: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="ISBN:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Quantity: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Preview: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Height="75px" TextMode="MultiLine" Rows="10"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Category: "></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlSubject" AutoPostBack="true" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlSubject_SelectedIndexChanged">
                    <asp:ListItem Text="<Select category>" disabled="disabled" Value="0" />
                </asp:DropDownList>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="ImageURL: "></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1"
                    runat="server"></asp:FileUpload>
                <asp:RegularExpressionValidator ID="regexValidator" runat="server"
                    ControlToValidate="FileUpload1"
                    ErrorMessage="Only JPEG images are allowed"
                    ValidationExpression="(.*\.([Jj][Pp][Gg])|.*\.([Jj][Pp][Ee][Gg])$)">
                </asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Mark as new:"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Add product" />
            </td>
        </tr>

    </table>
</asp:Content>
