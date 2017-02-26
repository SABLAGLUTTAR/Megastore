<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Megastore.pages.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    <table>
        <tr>
            <td rowspan="4" style="width: 40%">
                <asp:Image ID="imgProduct" Width="250px" runat="server" CssClass="detailsImage" />
            </td>
            <td style="width: 40%">
                <h2>
                    <asp:Label ID="lblTitle" runat="server"></asp:Label></h2>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDescription" runat="server" CssClass="detailsDescription"></asp:Label>
            </td>
            <td style="margin-left: 10px">
                <asp:Label ID="lblPrice" runat="server" datafield="detailsPrice"></asp:Label><br />
                <br />
                Quantity:<asp:DropDownList ID="ddlAmount" runat="server"></asp:DropDownList><br />
                <br />
                <asp:LinkButton ID="btnAdd" runat="server" OnClick="addToCart" CssClass="button" Text="Add Product" />
                <br />
                <asp:Label ID="lblResult" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Product No:
                <asp:Label ID="lblItemNr" runat="server" Style="font-style: italic"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Unit:
                <asp:Label ID="lblUnit" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
