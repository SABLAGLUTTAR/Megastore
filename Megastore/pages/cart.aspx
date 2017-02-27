<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Megastore.pages.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightbarHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <asp:GridView ID="CartGrid" runat="server" AutoGenerateColumns="false" OnRowDeleting="RemoveSelected">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="Name" />
            <asp:BoundField DataField="price_per_unit" HeaderText="Price" />
            <asp:BoundField DataField="unit" HeaderText="Unit" />
            
            <asp:TemplateField>
            <ItemTemplate>
            <asp:LinkButton ID="delSelected" runat="server" Text="Delete" CommandName="Delete"></asp:LinkButton>
           
            </ItemTemplate>
            <ItemStyle Width="100px" />
       
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    Total Sum: <asp:Label ID="totalSum" runat="server" AutoGenerateColumns="false"></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="checkoutBtn" runat="server" CssClass="button" Text="Checkout" />
    ADD LOGIN CONTROL TO THIS BUTTON

</asp:Content>
