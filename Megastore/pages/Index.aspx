﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Megastore.pages.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    
    <asp:UpdatePanel runat="server" ID="updatePanelIndex"><ContentTemplate>
    <asp:GridView ID="GridView1" ShowHeader="False" Font-Bold="true" AllowSorting="true" GridLines="Horizontal" runat="server" BackColor="White" Width="100%" CellPadding="5" DataSourceID="productsData" ForeColor="Black" AutoGenerateColumns="false">
       <EmptyDataTemplate>There where no products found!</EmptyDataTemplate>
         <AlternatingRowStyle BackColor="#FFFFFF" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#ededed" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        <Columns>

            <asp:ImageField DataImageUrlField="Image" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="160px"></asp:ImageField>
            <asp:BoundField ItemStyle-Width="180px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Left" DataField="Name" HeaderText="Product name" />
            <asp:BoundField ItemStyle-Width="250px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Left" DataField="Description" HeaderText="Description" />
            <asp:HyperLinkField DataTextField="Price"
                ItemStyle-HorizontalAlign="Center"
                ItemStyle-Width="150px"
                DataTextFormatString="{0:c}"
                HeaderText="Price"
                Target="" />
            <asp:HyperLinkField Text="View Details" 
                ItemStyle-Width="200px"
                DataNavigateUrlFields="Id"
                DataNavigateUrlFormatString="~\Pages\ProductDetails.aspx?Id={0}"
                Target="" />
        </Columns>
    </asp:GridView>
        </ContentTemplate>
        </asp:UpdatePanel>
    <asp:SqlDataSource ID="productsData" runat="server" ConnectionString="<%$ ConnectionStrings:dataConn %>" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT product_type.type_name AS Type, product_id As Id, product.product_name AS Name, categories.category_name AS Category, product.product_description AS Description, product.price_per_unit AS Price, product.unit AS Unit, product.image_url AS Image FROM categories INNER JOIN product ON categories.categories_id = product.categories_catogories_id INNER JOIN product_type ON product.product_type_idproduct_type = product_type.product_type_id"></asp:SqlDataSource>


</asp:Content>
