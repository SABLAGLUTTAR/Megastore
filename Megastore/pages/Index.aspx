<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Megastore.pages.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">


    <asp:GridView ID="GridView1" GridLines="None" runat="server" BackColor="White" Width="100%" CellPadding="3" DataSourceID="productsData" ForeColor="Black" AutoGenerateColumns="false">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#ededed" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        <Columns>

            <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="Name" HeaderText="Product name" />
            <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="Description" HeaderText="Description" />
            <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="Unit" HeaderText="Unit" />
            <asp:HyperLinkField DataTextField="Price"
                ItemStyle-HorizontalAlign="Center"
                ItemStyle-Width="150px"
                DataTextFormatString="{0:c}"
                HeaderText="Price"
                Target="" />
            <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="Type" HeaderText="Type" />
            <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="Category" HeaderText="Category" />
            <asp:ImageField DataImageUrlField="Image" ControlStyle-Width="150px"></asp:ImageField>
            <asp:TemplateField ItemStyle-Width="200px" ShowHeader="false" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:LinkButton Text="Add to Cart" runat="server" CommandArgument='<%#Eval("Name")%>' CommandName="Add" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="productsData" runat="server" ConnectionString="<%$ ConnectionStrings:etvffqgz_megastoreEntities %>" ProviderName="<%$ ConnectionStrings:etvffqgz_megastoreEntities.ProviderName %>" SelectCommand="SELECT product_type.type_name AS Type, product.product_name AS Name, categories.category_name AS Category, product.product_description AS Description, product.price_per_unit AS Price, product.unit AS Unit, product.image_url AS Image FROM categories INNER JOIN product ON categories.categories_id = product.categories_catogories_id INNER JOIN product_type ON product.product_type_idproduct_type = product_type.product_type_id"></asp:SqlDataSource>


</asp:Content>
