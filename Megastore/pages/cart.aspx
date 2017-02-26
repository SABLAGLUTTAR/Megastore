<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Megastore.pages.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightbarHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    
    FILTER THE DATA

    <asp:GridView ID="CartGrid" runat="server" DataSourceID="ObjectDataSource1">
    </asp:GridView>
    <br />
    <br />
    Total Sum: <asp:Label ID="totalSum" runat="server" AutoGenerateColumns="false"></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="checkoutBtn" runat="server" CssClass="button" Text="Checkout" />
    ADD LOGIN CONTROL TO THIS BUTTON

</asp:Content>
