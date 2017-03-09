<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="Megastore.pages.ManageProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <asp:TextBox ID="IdBox" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    <br />
    <asp:TextBox ID="TitleBox" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
            <br />
    <asp:TextBox ID="DescBox" runat="server" TextMode="MultiLine" CssClass="form-control" Height="300px"  placeholder="Description"></asp:TextBox>
    <br />
    <asp:DropDownList ID="TypeList" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="true" DataTextField="type_name" DataValueField="product_type_id">
        
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dataConn %>" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT product_type_id, type_name FROM product_type"></asp:SqlDataSource>
    <br />
    <br />
    <asp:TextBox ID="UnitBox" runat="server" CssClass="form-control" placeholder="Unit"></asp:TextBox>
    <br />
    <asp:TextBox ID="PriceBox" runat="server" CssClass="form-control" placeholder="Price"></asp:TextBox>
    <br />
    <asp:TextBox ID="ImageBox" runat="server" CssClass="form-control" placeholder="ImageURL"></asp:TextBox>
    <br />
    <asp:DropDownList ID="CatList" runat="server" DataSourceID="SqlDataSource2" AutoPostBack="true" DataTextField="category_name" DataValueField="categories_id">
        
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dataConn %>" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT category_name, categories_id FROM categories"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="ButtonAddAdmin" runat="server" CssClass="btn btn-default" OnClick="ValidateBtn_Click"   Text="Update/Add" Width="127px" />
    <asp:Label ID="resLbl" runat="server"></asp:Label>
</asp:Content>

