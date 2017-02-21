<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Megastore.pages.store.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    
        <asp:Label ID="testLabel" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" Width="100%" DataSourceID="sqlTest" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqlTest" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" ProviderName="<%$ ConnectionStrings:mydbConnectionString.ProviderName %>" SelectCommand="SELECT product_type.type_name AS Typ, product.product_name AS Name, product.product_description AS Description, product.unit AS Unit, product.price_per_unit AS Price, product.image_url AS Image, categories.category_name AS Category FROM product_type INNER JOIN product ON product_type.product_type_id = product.product_type_idproduct_type INNER JOIN categories ON product.categories_catogories_id = categories.categories_id WHERE (product_type.type_name = @category) AND (categories.category_name = @subcat)">
             <SelectParameters>
    <asp:QueryStringParameter Name="category" QueryStringField="category" />
                 <asp:QueryStringParameter Name="subcat" QueryStringField="subcat" />
  </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:EntityDataSource ID="productData" runat="server" ConnectionString="name=mydbEntities" DefaultContainerName="mydbEntities" EnableFlattening="False" EntitySetName="products" >
        </asp:EntityDataSource>
   
</asp:Content>
